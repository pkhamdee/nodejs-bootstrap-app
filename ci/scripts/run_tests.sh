#!/usr/bin/env bash

set -e -u -x

mv dependency-cache/node_modules repo-src
cd repo-src && npm test
