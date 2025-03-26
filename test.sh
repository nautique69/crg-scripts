#! /bin/bash

CRG_VERSION="${1:-v2025.5}"

mkdir ~/scoreboard
cd scoreboard
wget https://github.com/rollerderby/scoreboard/releases/download/$CRG_VERSION/crg-scoreboard_$CRG_VERSION.zip
unzip ./crg-scoreboard_$CRG_VERSION.zip
