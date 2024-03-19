#!/bin/bash
echo "Resetting repos to head state"
cd hardware/google/pixel
git reset --hard FETCH_HEAD
echo "Applying patches"
git am ../../../device/sony/pdx206/patches/platform_hardware_google_pixel/0001-kernel_headers-Guard-with-soong-namespace.patch
cd ../../..
echo "done"
