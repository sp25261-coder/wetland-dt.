# WETLAND-DT v2.0

Offline-first, installable Progressive Web App for wetland site registry, GIS layer catalogue/GeoJSON preview, field water-quality observations, biodiversity records, JSON/CSV export and optional Supabase cloud upload.

## Deploy to GitHub Pages
Upload the **contents** of this folder (not the enclosing folder) to the repository root, preserving `icons/`, `supabase/`, and `docs/`. Commit to `main`. In Settings → Pages choose Deploy from a branch → `main` → `/ (root)`. Use the project Pages URL ending in the repository path.

## Android installation
Serve over HTTPS. Open the exact Pages project URL in Chrome. After the first successful load and service-worker registration, use Chrome menu → Install app (or Add to Home screen). If Install is unavailable, refresh once online, clear the old site data/service worker for the previous v1 deployment, and retry. The app may still be added as a shortcut; that is not the same as a native APK.

## Modules
- Wetland registry with coordinates and designation
- GIS layer metadata and GeoJSON preview on an online Leaflet/OpenStreetMap basemap
- Water chemistry field records (units shown per parameter)
- Biodiversity observations
- Local-first storage and JSON/CSV export
- Optional Supabase Auth + RLS-protected record upload (see `docs/CLOUD_SETUP.md`)

## Important
The app does not perform raster analysis, laboratory validation, hydrological modelling, or two-way cloud merge. Use QGIS/GEE and validated scientific workflows for analysis. Review the cloud setup and security notes before real field deployment.
