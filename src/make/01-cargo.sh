#!/bin/bash
set -e

echo "::group:: ===$(basename "$0")==="

# Установка Rust и ожидание завершения
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
#source /root/.cargo/env
#
## Убедимся, что Rust установлен
#rustup default stable
#cargo --version

echo "::endgroup::"