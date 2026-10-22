#!/bin/bash

. build/envsetup.sh

axion cupid full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion zeus full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion mayfly full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion unicorn full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion diting full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion thor full user &&
ax -br -j$(nproc --all) && sleep 150 &&

axion mondrian full user &&
ax -br -j$(nproc --all)