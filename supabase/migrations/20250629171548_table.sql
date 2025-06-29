CREATE TABLE IF NOT EXISTS private.tenants (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    tenant_id UUID NOT NULL,
    updated_at TIMESTAMPTZ DEFAULT now()
);