# JKL Global LLP — Tech &amp; Talent

The public website for **JKL Global LLP**, a Singapore firm built on two disciplines — the **2 T's**:

- **Tech** — a software engineering practice shipping production-grade web, mobile and AI products.
- **Talent** — a talent-management roster for acting, singing, emcee and livestream work.

It's a single static homepage with a **Tech / Talent** segmented toggle (in the nav and hero) that swaps the entire content area between the two arms, sharing one dark, metallic theme. The talent arm picks up a warm rose accent so the two divisions read as distinct but related.

## Structure

| File | Purpose |
| --- | --- |
| `index.html` | Homepage. Tech arm (Work grid, About, Team) + Talent arm (Roster, Services), toggled client-side. Deep-links: `#tech`, `#talent`. |
| `profile.html` | Komei Foong full talent profile. |
| `digital_komei.html` | Komei Foong digital business card (vCard download + QR). |
| `logo.png`, `og-image.png`, `about-banner.jpg` | Tech-arm brand + social assets. |
| `komei.png`, `henry.jpeg`, `komeiqr.png` | Talent-arm imagery. |

The Tech portfolio (14 shipped products), team and founder bio live in the `PROJECTS` / `TEAM` arrays inside the `<script>` block in `index.html` — edit them there.

## Run locally

It's plain static HTML — no build step. Either:

```bash
# any static server
python3 -m http.server 8000
# then open http://localhost:8000
```

or open `index.html` directly in a browser.

### Docker (production parity)

Serves via nginx on **port 3000** (Coolify default), with gzip, security headers, a CSP allowing Google Fonts, long-cache for images and a `/health` endpoint.

```bash
docker build -t jkl-global .
docker run --rm -p 3000:3000 jkl-global
# http://localhost:3000  ·  health: http://localhost:3000/health
```

## Environment variables

None — the site is fully static.

## Notes

- `logo.png` is currently the engineering-studio mark and shows an "R". Drop in a JKL logo at the same path to rebrand fully.
- Contacts: Tech → `jeremiah@jkl.company` · Talent → `info@jklentertainment.com`, +65 8200 5226.
- The talent profile carousel uses the profile photo as a single placeholder slide until real portfolio images are added (see the `TODO` in `profile.html`).

## License

© JKL Global LLP. All rights reserved.
