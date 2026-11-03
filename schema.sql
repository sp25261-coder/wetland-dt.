-- WETLAND-DT v2.0 Supabase schema
-- Run in Supabase Dashboard > SQL Editor. Enable email auth in Authentication settings.
create table if not exists public.wetland_records (
  id uuid primary key,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  record_type text not null check (record_type in ('sites','layers','water','biodiversity')),
  site_id uuid,
  payload jsonb not null,
  updated_at timestamptz not null default now()
);
create index if not exists wetland_records_user_type_idx on public.wetland_records(user_id, record_type);
alter table public.wetland_records enable row level security;
drop policy if exists "Users can read own wetland records" on public.wetland_records;
create policy "Users can read own wetland records" on public.wetland_records for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can insert own wetland records" on public.wetland_records;
create policy "Users can insert own wetland records" on public.wetland_records for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users can update own wetland records" on public.wetland_records;
create policy "Users can update own wetland records" on public.wetland_records for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
drop policy if exists "Users can delete own wetland records" on public.wetland_records;
create policy "Users can delete own wetland records" on public.wetland_records for delete to authenticated using (auth.uid() = user_id);
grant select, insert, update, delete on public.wetland_records to authenticated;
