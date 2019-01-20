#!/bin/bash
set -x
WORK_DIR=$(pwd)
REQS_DIR=${WORK_DIR}/reqs/pip2pi
VENV_DIR=${WORK_DIR}/.ansible_venv

apt install -y python3 python3-pip libffi-dev python-dev virtualenv build-essential

virtualenv -p python3 ${VENV_DIR}
source ${VENV_DIR}/bin/activate
pip3 install pip2pi

pip2pi ${REQS_DIR} -r requirements.txt

mkdir -p ${REQS_DIR}
pip3 install -U -r requirements.txt
