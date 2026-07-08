#!/usr/bin/env bash

set -euo pipefail

PRESET=$1

echo "========================================"
echo " Build preset: ${PRESET}"
echo "========================================"

cmake --preset ${PRESET}
cmake --build --preset ${PRESET}
ctest --preset ${PRESET} -V

if [[ "$PRESET" == "coverage" ]]; then
	cmake --build --preset coverage --target coverage
fi
if [[ "$PRESET" == "sanitize" ]]; then
   	valgrind --error-exitcode=1 ctest --preset $PRESET
fi
if [[ "$PRESET" == "valgrind" ]]; then
	valgrind ./build/valgrind/App
fi

if [[ "$PRESET" == "helgrind" ]]; then
	valgrind --tool=helgrind ./build/valgrind/App
fi
