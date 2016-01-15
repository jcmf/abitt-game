#!/bin/sh -ex
iced -c *.coffee*
node data-uri.js
./main.js --pretty test.jade
