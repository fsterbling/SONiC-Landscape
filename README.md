# SONiC Foundation Landscape

An interactive landscape website for the [SONiC Foundation](https://sonicfoundation.dev), built with [landscape2](https://github.com/cncf/landscape2) — the same tool that powers [landscape.cncf.io](https://landscape.cncf.io).

## 🚀 Quick Setup (5 minutes)

### Step 1 — Upload this repo to GitHub

If you downloaded a ZIP:
1. Create a new GitHub repository (public recommended for free GitHub Pages)
2. Extract the ZIP and push all files to the `main` branch:

```bash
git init
git add .
git commit -m "Initial SONiC landscape"
git branch -M main
git remote add origin https://github.com/YOUR_ORG/YOUR_REPO.git
git push -u origin main
```

### Step 2 — Enable GitHub Pages

1. Go to your repo → **Settings** → **Pages**
2. Under *Source*, select **Deploy from a branch**
3. Set branch to `gh-pages` / `/ (root)`
4. Click **Save**

> The `gh-pages` branch is created automatically by the GitHub Actions workflow on the first successful build.

### Step 3 — Allow Actions to write to the repo

1. Go to **Settings** → **Actions** → **General**
2. Scroll to *Workflow permissions*
3. Select **Read and write permissions**
4. Click **Save**

### Step 4 — Trigger the first build

Go to **Actions** → **Build and Deploy SONiC Landscape** → **Run workflow**.

After ~1 minute your landscape will be live at:
```
https://YOUR_ORG.github.io/YOUR_REPO/
```

---

## 📁 Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── build-and-deploy.yml   # CI: builds & deploys to GitHub Pages
├── logos/                          # SVG logos for all items (add yours here)
│   └── placeholder.svg             # Fallback used for missing logos
├── data.yml                        # All landscape items & descriptions
├── settings.yml                    # Branding, colors, tabs, featured items
├── guide.yml                       # Written guide content
└── README.md                       # This file
```

## 📋 Landscape Contents

### Members (sourced from sonicfoundation.dev/members/)

| Tier | Members |
|------|---------|
| **Premier** (13) | Alibaba, Arista, Broadcom, Celestica, Cisco, Dell, Google, Marvell, Microsoft, Nexthop AI, Nokia, NVIDIA, Upscale AI |
| **General** (18) | Aria Networks, Asterfusion, Aviz Networks, BE Networks, Denvr Dataworks, Dorado Software, Edgecore, Hedgehog, iA Cloud, Juniper, Larch Networks, Micas Networks, Netweb Technologies, PalCNetworks, PANTHEON.tech, PLVision, STORDIS, Sumitomo Electric |
| **Associate** (5) | Abater Foundation, BDBOS, CMKL University, EPFL, University of Rome Tor Vergata |

### Products & Solutions (14 items across 5 subcategories)
- **Orchestration & Automation**: SandWork (PANTHEON.tech), Aviz ONES, Hedgehog Open Network Fabric
- **SONiC Distributions**: Aviz Certified Community SONiC, Enterprise SONiC (STORDIS), SONiC Lite (PLVision)
- **Observability & Monitoring**: MONSOON (STORDIS), Aviz Network Copilot™, Aviz Packet Broker
- **Testing & Validation**: Aviz FTAS, PLVision SAI Challenger
- **Engineering Services**: PANTHEON.tech, PLVision Care Suite, PLVision Custom Dev, STORDIS Bootcamps

### Hardware Ecosystem
- Celestica DS/ES Series, Dell PowerSwitch S/Z/N, Edgecore Switches, Micas Networks

---

## 🖼️ Adding Logos

Logos are SVG files in the `logos/` directory. The filename must match the `logo:` field in `data.yml`.

Many member logos are hosted on the Linux Foundation CDN. Download them like this:

```bash
# Examples — run from inside the logos/ directory
curl -o edgecore.svg \
  "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/edgecorenetworkcorporation.svg"

curl -o pantheon-tech.svg \
  "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/pantheon-technologies.svg"

curl -o arista.svg \
  "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/arista-networks.svg"
```

All member logo CDN URLs are visible in the `sonicfoundation.dev/members/` page source.

---

## ✏️ Adding or Editing Items

Open `data.yml` and add an entry under the appropriate `subcategory:`:

```yaml
- name: Your Product Name
  homepage_url: https://yourproduct.com
  logo: your-product.svg          # put the SVG in logos/
  repo_url: https://github.com/org/repo   # optional, enables GitHub stats
  crunchbase: https://www.crunchbase.com/organization/yourorg  # optional
  description: >-
    A concise 2–4 sentence description of what this product does
    and how it relates to SONiC.
  extra:
    tag: Orchestration            # e.g. Orchestration, NOS Distribution, Hardware…
    member: YourCompany           # must match a member name in data.yml
    member_subcategory: General Members
```

Then push to `main` — GitHub Actions will rebuild the site automatically.

---

## 🔑 Optional: Data Enrichment

landscape2 can enrich items with GitHub star counts, commit activity, and Crunchbase funding data. Add these as repository secrets (**Settings → Secrets → Actions**):

| Secret name | How to get it |
|-------------|---------------|
| `GITHUB_TOKENS` | Personal access token(s) with `public_repo` scope — comma-separate multiple tokens |
| `CRUNCHBASE_API_KEY` | Requires a Crunchbase Enterprise or Application licence |

Then update the workflow `build` step to pass them in:

```yaml
env:
  GITHUB_TOKENS: ${{ secrets.GITHUB_TOKENS }}
  CRUNCHBASE_API_KEY: ${{ secrets.CRUNCHBASE_API_KEY }}
```

---

## 🏗️ Local Development

```bash
# Install landscape2
curl --proto '=https' --tlsv1.2 -LsSf \
  https://github.com/cncf/landscape2/releases/download/v1.1.0/landscape2-installer.sh | sh

# Build
landscape2 build \
  --data-file data.yml \
  --settings-file settings.yml \
  --guide-file guide.yml \
  --logos-path logos \
  --output-dir build

# Serve at http://127.0.0.1:8000
landscape2 serve --landscape-dir build
```

---

## License

Landscape data and configuration © SONiC Foundation contributors.  
landscape2 tool: [Apache License 2.0](https://github.com/cncf/landscape2/blob/main/LICENSE)
