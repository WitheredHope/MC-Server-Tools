#!/bin/bash
modsFolder=""
targets=()
list=()
for entry in ./newmods/*
do
  noprefix=${entry#"./newmods/"}
  noprefix=${noprefix%-*}
  list+=($noprefix)
done
echo ${list[@]}
for mods in ${list[@]}
do
  echo 14 $mods
  rm $modsFolder$mods*
done
for new in ./newmods/*
do
echo $new
mv "$new" $modsFolder
done