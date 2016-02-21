#!/bin/sh
set -ex
rm -fr index.html dist/
coffee test.coffee
gribbl index.jade
sn=$(perl -lne 'print $1 if m(s/n ([0-9-]+)-6/12)' index.html)
test -n "$sn"
name=abitt-game-$sn
mkdir dist
cd dist
cp ../index.html $name.html
zip $name.zip $name.html
