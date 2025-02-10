#!/bin/bash

echo "::group:: ===$(basename "$0")==="

# Задаём пароль для root
echo "root:atomic" | chpasswd

echo "::endgroup::"