#!/bin/bash

echo "::group:: ===$(basename "$0")==="

apt-get update && apt-get dist-upgrade -y

echo "::endgroup::"