# Cloud database setup (Supabase)

1. Create a project at https://supabase.com/ and keep the database region appropriate for your users.
2. In Project Settings → API, copy the Project URL and the publishable key (or legacy anon key). Never use `service_role` or secret keys in this browser app.
3. Open SQL Editor and run `schema.sql` from this package.
4. In Authentication → Providers, enable Email. For initial testing you may turn off email confirmation, but enable it for real use. Configure SMTP before production use.
5. Open the hosted WETLAND-DT v2.1 → Cloud Sync. Enter URL, publishable/anon key, email and password. Save settings, create account or sign in, then Sync records.
6. Each account can read/write only its own rows because of row-level security (RLS). Test with two accounts before field deployment.

## Important limits
- Cloud sync sends structured site/layer/water/biodiversity records only. It does not upload large GeoTIFFs, shapefiles, photographs or other binary attachments. Use Supabase Storage with a separately designed private bucket and policies for those files.
- Current sync is upload/upsert only; it does not download/merge cloud changes onto a second device yet. Do not treat this as full two-way synchronization.
- This is a prototype, not a validated laboratory information management system. Apply data QA/QC, audit trails, backups, retention policy and security review before operational government use.
- Do not store sensitive personal data or publish exact threatened-species locations without access controls.
