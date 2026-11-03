# WETLAND-DT Android PWA v1.0

## What it is
An installable, mobile-first Progressive Web App (PWA). It is not a signed APK. It can be added to the Android home screen when hosted on HTTPS.

## Deploy free
Option A: GitHub Pages
1. Create a GitHub account and a public repository named `wetland-dt`.
2. Upload all files and folders from this package (keep structure).
3. In repository Settings → Pages, select deploy from branch `main`, folder `/root`.
4. Wait for GitHub Pages URL.
5. Open that HTTPS URL in Android Chrome.
6. Chrome menu → Install app / Add to Home screen.

Option B: Any existing HTTPS web hosting that supports static files.

## Local preview
On a computer with Python installed, open terminal in this folder and run:
`python -m http.server 8000`
Open `http://localhost:8000` on the same computer. This local preview is not installable as a PWA on a phone unless served over HTTPS or localhost on the phone.

## Current functions
- Register multiple wetland sites
- Site summary dashboard
- Record selected file metadata by wetland and category
- Export JSON backup
- Offline cache of application shell
- Local browser storage

## Limitations
- This prototype stores wetland records in browser localStorage.
- File picker currently records file names and metadata only; it does not upload or parse actual file contents.
- No GIS geometry processing, lab report extraction, hydrological simulation, live sensors, account sync or multi-user sharing yet.
- Data is local to the browser/device; clearing browser storage can erase records. Export backups regularly.
- For scientific modelling, use the desktop/server data pipeline and validated source datasets.
