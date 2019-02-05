#!/bin/bash
set -x
WORK_DIR=$(pwd)
REQS_DIR=${WORK_DIR}/reqs/pack
VENV_DIR=${WORK_DIR}/.ansible_venv

sudo apt install -y python-pip \
		    python-dev \
                    libffi-dev \
                    libssl-dev \
                    libxml2-dev \
                    libxslt1-dev \
                    libjpeg8-dev \
                    zlib1g-dev \
                    python3 \
                    python3-pip \
                    virtualenv \
                    build-essential \
                    python3-apt \
                    python-apt \
                    sshpass \
                    openssl

#rm -f /usr/bin/python
#ln -s /usr/bin/python3.5 /usr/bin/python

#rm -rf ${VENV_DIR} || /bin/true
#virtualenv -p python3 ${VENV_DIR}
#source ${VENV_DIR}/bin/activate
#pip3 install pip2pi

#pip2pi ${REQS_DIR} -r requirements.txt

for deb in $(ls $WORK_DIR/reqs | grep "*.deb")
do
    dpkg -i $WORK_DIR/reqs/${deb}
done

mkdir -p ${REQS_DIR}
pip3 install -U -r requirements.txt
