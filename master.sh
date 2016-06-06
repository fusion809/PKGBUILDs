#!/bin/bash
for i in */
do
  cd $i
  git checkout master
  git pull origin master
  cd -
done
