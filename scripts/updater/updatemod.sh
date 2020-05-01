#!/bin/bash
modsFolder=
for entry in ./newmods/*
do
  echo ${entry#"./newmods/"}
done

