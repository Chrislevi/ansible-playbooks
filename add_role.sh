#!/bin/bash

echo "Creating role ${1}"

mkdir -p roles/${1}
mkdir -p roles/${1}/{templates,vars,files,meta,tasks,defaults}
touch roles/${1}/{vars,meta,tasks,defaults}/main.yml
touch roles/${1}/files/.gitkeep
touch roles/${1}/templates/.gitkeep

