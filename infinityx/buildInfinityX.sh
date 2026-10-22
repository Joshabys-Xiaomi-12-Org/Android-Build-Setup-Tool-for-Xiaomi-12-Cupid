#!/bin/bash

. build/envsetup.sh

lunch infinity_cupid-user  &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_zeus-user &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_mayfly-user &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_unicorn-user &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_diting-user &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_thor-user &&
m bacon -j$(nproc --all) && sleep 150 &&

lunch infinity_mondrian-user &&
m bacon -j$(nproc --all)