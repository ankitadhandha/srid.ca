#!/usr/bin/env bash

# A script to sync a subset of private notes to be published

set -e

ZK=$HOME/Documents/zk

#TODO: delete local files first
(cd $ZK && nix-shell -p ripgrep --run "rg -lU \"^---(\r)*\nslug: \" .") > /tmp/zkimport
rsync -zarv --files-from=/tmp/zkimport  ~/Documents/zk/ ./
