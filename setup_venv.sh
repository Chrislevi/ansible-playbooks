#!/bin/bash
set -x
pip install virtualenv

virtualenv -p python3.7 .ansible_venv
source .ansible_venv/bin/activate

pip install docker docker-compose ansible
export ANSIBLE_PYTHON_INTERPRETER=${PWD}/.ansible_venv/bin/python3.7
