drop policy "Enable insert for authenticated users only" on "public"."raw_transactions";

drop policy "Enable read access for all users" on "public"."raw_transactions";

drop policy "Enable update access for all users" on "public"."raw_transactions";

revoke delete on table "public"."monthly_income" from "anon";

revoke insert on table "public"."monthly_income" from "anon";

revoke references on table "public"."monthly_income" from "anon";

revoke select on table "public"."monthly_income" from "anon";

revoke trigger on table "public"."monthly_income" from "anon";

revoke truncate on table "public"."monthly_income" from "anon";

revoke update on table "public"."monthly_income" from "anon";

revoke delete on table "public"."monthly_income" from "authenticated";

revoke insert on table "public"."monthly_income" from "authenticated";

revoke references on table "public"."monthly_income" from "authenticated";

revoke select on table "public"."monthly_income" from "authenticated";

revoke trigger on table "public"."monthly_income" from "authenticated";

revoke truncate on table "public"."monthly_income" from "authenticated";

revoke update on table "public"."monthly_income" from "authenticated";

revoke delete on table "public"."monthly_income" from "service_role";

revoke insert on table "public"."monthly_income" from "service_role";

revoke references on table "public"."monthly_income" from "service_role";

revoke select on table "public"."monthly_income" from "service_role";

revoke trigger on table "public"."monthly_income" from "service_role";

revoke truncate on table "public"."monthly_income" from "service_role";

revoke update on table "public"."monthly_income" from "service_role";

revoke delete on table "public"."raw_transactions" from "anon";

revoke insert on table "public"."raw_transactions" from "anon";

revoke references on table "public"."raw_transactions" from "anon";

revoke select on table "public"."raw_transactions" from "anon";

revoke trigger on table "public"."raw_transactions" from "anon";

revoke truncate on table "public"."raw_transactions" from "anon";

revoke update on table "public"."raw_transactions" from "anon";

revoke delete on table "public"."raw_transactions" from "authenticated";

revoke insert on table "public"."raw_transactions" from "authenticated";

revoke references on table "public"."raw_transactions" from "authenticated";

revoke select on table "public"."raw_transactions" from "authenticated";

revoke trigger on table "public"."raw_transactions" from "authenticated";

revoke truncate on table "public"."raw_transactions" from "authenticated";

revoke update on table "public"."raw_transactions" from "authenticated";

revoke delete on table "public"."raw_transactions" from "service_role";

revoke insert on table "public"."raw_transactions" from "service_role";

revoke references on table "public"."raw_transactions" from "service_role";

revoke select on table "public"."raw_transactions" from "service_role";

revoke trigger on table "public"."raw_transactions" from "service_role";

revoke truncate on table "public"."raw_transactions" from "service_role";

revoke update on table "public"."raw_transactions" from "service_role";

alter table "public"."raw_transactions" drop constraint "raw_transactions_reference_number_key";

alter table "public"."monthly_income" drop constraint "monthly_income_pkey";

alter table "public"."raw_transactions" drop constraint "raw_transactions_pkey";

drop index if exists "public"."monthly_income_pkey";

drop index if exists "public"."raw_transactions_pkey";

drop index if exists "public"."raw_transactions_reference_number_key";

drop table "public"."monthly_income";

drop table "public"."raw_transactions";


