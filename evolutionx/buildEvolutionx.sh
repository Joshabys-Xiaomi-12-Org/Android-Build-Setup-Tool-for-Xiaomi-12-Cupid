#!/bin/bash

. build/envsetup.sh

lunch lineage_cupid-bp4a-user  &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_zeus-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_mayfly-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_unicorn-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_diting-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_thor-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_marble-bp4a-user &&
m evolution -j$(nproc --all) && sleep 150 &&

lunch lineage_mondrian-bp4a-user &&
m evolution -j$(nproc --all)
