#!/bin/bash


function up() {
  vagrant up

  VMS=$(vagrant status | grep virtualbox | awk '{print $1}')
  for vm in $VMS
  do
      vagrant snapshot save ${vm} ${vm}_snap
  done
}

function restore() {
  VMS=$(vagrant status | grep virtualbox | awk '{print $1}')
  for vm in $VMS
  do
      vagrant snapshot restore ${vm} ${vm}_snap --no-provision
  done
}

function destroy() {
  vagrant destroy -f
}
case $1 in
  up) up;;
  restore) restore;;
  destroy) destroy;;
  *) echo "[up|restore]"
esac
