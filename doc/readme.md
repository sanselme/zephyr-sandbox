# Documentation

## Prerequesite

- install python
- install west

## Environment

- west init -m https://github.com/sanselme/zephyr-sandbox --mr main workspace
- cd workspace
- west config manifest.project-filter +zephyr-lang-swift
- west update

## Build

- cd zephyr-sandbox
- west build -p -t run
