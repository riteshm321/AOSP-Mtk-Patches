#!/bin/bash
cd ../../../..
cd frameworks/av
git apply -v ../../device/Infinix/X556/patches_mtk/EngineerMode#1.patch
cd ../..
cd frameworks/base
git apply -v ../../device/Infinix/X556/patches_mtk/EngineerMode#2.patch
cd ../..
