#!/bin/bash

. build/envsetup.sh

breakfast cupid user  &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast zeus user &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast mayfly user &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast unicorn user &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast diting user &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast thor user &&
m pixelos -j$(nproc --all) && sleep 150 &&

breakfast mondrian user &&
m pixelos -j$(nproc --all)