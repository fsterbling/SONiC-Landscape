#!/usr/bin/env bash
# Run this script from inside the logos/ directory:
#   cd logos && bash download-logos.sh

set -euo pipefail
cd "$(dirname "$0")"

echo "Downloading SONiC Foundation member logos from LF CDN..."

# ── Premier Members ────────────────────────────────────────────────────────
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/alibaba_com_inc_1723738594964_0014100000TdzFRAAZ.svg" -o alibaba.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/arista-networks.svg" -o arista.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/broadcom_corporation_1764009332822_0014100000Te1P7AAJ.svg" -o broadcom.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/celestica_international_lp_by_its_general_partner_1712057861296_0014100000Te1QTAAZ.svg" -o celestica.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/cisco-systems-inc.svg" -o cisco.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/dell-technologies.svg" -o dell.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/google-llc.svg" -o google.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/marvell-semiconductors-ltd.svg" -o marvell.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/microsoft-corporation.svg" -o microsoft.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/nexthop_ai_1769443077024_001QP00000WMVypYAH.svg" -o nexthop-ai.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/nokia_of_america_corporation_1762961061069_001QP000015kcF1YAI.svg" -o nokia.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/nvidia_corporation_1714766310607_0014100000Te0Y3AAJ.svg" -o nvidia.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/upscale_ai_inc_1772060499649_001QP00000twhEjYAI.svg" -o upscale-ai.svg

# ── General Members ────────────────────────────────────────────────────────
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/aureka.svg" -o aria-networks.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/asterfusion-data-technologies.svg" -o asterfusion.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/Aviz%20Logo%20Colored.svg" -o aviz.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/beyondedge_1733172671193_0012M00002ppHXXQA2.svg" -o be-networks.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/denvr-dataworks.svg" -o denvr-dataworks.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/dorado_software_1752759706325_0014100000Te05iAAB.svg" -o dorado-software.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/edgecorenetworkcorporation.svg" -o edgecore.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/hedgehog.svg" -o hedgehog.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/ia-cloud-inc..svg" -o ia-cloud.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/juniper-networks-inc.svg" -o juniper.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/larch_networks_1762186381159_001QP00000nPEIEYA4.svg" -o larch-networks.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/micas-networks.svg" -o micas-networks.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/netweb_technologies_1712212775432_0012M00002sxsDlQAI.svg" -o netweb-technologies.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/palcnetworks.svg" -o palcnetworks.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/pantheon-technologies.svg" -o pantheon-tech.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/plvision.svg" -o plvision.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/stordis_gmbh_1745509980900_0014100001RTKtkAAH.svg" -o stordis.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/sumitomo-electric-industry,-ltd..svg" -o sumitomo.svg

# ── Associate Members ──────────────────────────────────────────────────────
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/abater-foundation.svg" -o abater.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/bdbos_2245_1769887370277_001QP0000186ZScYAM.svg" -o bdbos.svg
curl -sL "https://lf-platform-documents-prod.s3.amazonaws.com/cmkl_university_2234_1762968886742_001QP000016pKwwYAE.svg" -o cmkl-university.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/epfl.svg" -o epfl.svg
curl -sL "https://lf-master-organization-logos-prod.s3.us-east-2.amazonaws.com/universityofrometorvergata.svg" -o uniroma2.svg

# ── Products (custom SVGs where no LF logo exists) ─────────────────────────
# SandWork — use PANTHEON.tech logo as fallback
cp pantheon-tech.svg sandwork.svg
# All Aviz products share the Aviz logo
cp aviz.svg aviz-ones.svg
cp aviz.svg aviz-ftas.svg
cp aviz.svg aviz-copilot.svg
cp aviz.svg aviz-packet-broker.svg
cp aviz.svg aviz-sonic.svg
# STORDIS products share the STORDIS logo
cp stordis.svg stordis-sonic.svg
cp stordis.svg stordis-monsoon.svg
# PLVision products share the PLVision logo
cp plvision.svg plvision-sonic-lite.svg
cp plvision.svg plvision-sai.svg
# Hedgehog fabric shares the Hedgehog logo
cp hedgehog.svg hedgehog-fabric.svg

echo ""
echo "✅ Done! $(ls *.svg | wc -l) SVG files downloaded."
ls *.svg
