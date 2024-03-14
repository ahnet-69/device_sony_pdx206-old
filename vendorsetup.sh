#!/bin/bash

echo "Resetting repos to Head state"
cd packages/apps/Updates
git reset --hard FETCH_HEAD

echo "Applying patches"
git am ../../../device/sony/pdx206/patches/platform_packages_apps_updates/0001-updates-Point-OTA-URL-to-custom-repo.patch

cd ../../..
echo "Done"
