CREATE TABLE IF NOT EXISTS public.user_profiles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    tenant_id UUID NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE OR REPLACE FUNCTION private.check_tenant_id_trigger()
RETURNS TRIGGER AS $$
BEGIN
    -- Check if the tenant_id of the row being modified (NEW.tenant_id)
    -- matches the currently expected tenant ID from our function.
    IF NEW.tenant_id = tenant_id() THEN
        -- If they match, raise an exception with a descriptive message.
        RAISE EXCEPTION 'Invalid tenant_id: %. The row must belong to the current tenant.', NEW.tenant_id;
    END IF;

    -- If the check passes, return the new row to be inserted or updated.
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


DROP TRIGGER IF EXISTS user_profiles_tenant_check ON public.user_profiles;

CREATE TRIGGER user_profiles_tenant_check
BEFORE INSERT OR UPDATE ON public.user_profiles
FOR EACH ROW
EXECUTE FUNCTION private.check_tenant_id_trigger();