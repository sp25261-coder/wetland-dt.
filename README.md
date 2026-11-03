# WETLAND-DT v2.1.0 — Data Recovery & Registry Fix

This is a mobile-first, offline-capable Progressive Web App for wetland registry, GIS layer metadata/GeoJSON preview, water-quality observations, biodiversity records, JSON/CSV backup and optional Supabase upload.

## Deploy
Upload the contents of this ZIP to the GitHub repository root and commit to `main`. Replace files with matching names. Keep all files at repository root in this flat-upload package.

## Data safety and recovery
- Existing browser records are not automatically cleared or overwritten.
- Registry includes a Refresh saved records control.
- Import backup JSON merges records by record ID; existing matching IDs are left unchanged. It does not replace or clear the current database.
- Existing duplicate Site Codes from legacy backups are preserved and flagged for manual review. New saves reject a Site Code already used by another record.
- Edit details updates the selected site's record while retaining its ID and creation timestamp.
- Export JSON before major changes. Keep a copy outside the device.

## Android
Serve from HTTPS (GitHub Pages). Open the project Pages URL in Chrome, load once online, then use Chrome menu → Install app / Add to Home screen. A shortcut is not a native APK. Native APK/AAB requires a separate Android build and signing process.

## Scientific and cloud limitations
GIS raster processing (NDVI/NDWI, DEM, slope, LULC), laboratory QA/QC, hydrological modelling and validated ecological predictions are not performed by this PWA. Supabase is optional and requires a user-owned project, SQL schema setup and credentials. Current cloud sync is upload-only; it is not two-way synchronization. Do not expose service-role keys.
