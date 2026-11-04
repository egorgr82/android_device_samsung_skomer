#!/bin/bash
# Запускать из корня дерева исходников: bash device/samsung/skomer/patches/apply.sh
set -e
P=$PWD/device/samsung/skomer/patches
git -C build am --3way $P/build/*.patch
git -C frameworks/av am --3way $P/av/*.patch
git -C frameworks/base am --3way $P/base/*.patch
git -C frameworks/native am --3way $P/native/*.patch
git -C packages/apps/Camera2 am --3way $P/Camera2/*.patch
git -C packages/apps/Settings am --3way $P/Settings/*.patch
git -C packages/services/Telephony am --3way $P/Telephony/*.patch
git -C system/core am --3way $P/core/*.patch
