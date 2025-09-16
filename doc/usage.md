# Usage

## 1. Clone zephyr-lang-swift as a module

The simplest way to enable Swift support is to clone the `zephyr-lang-swift` repository into your modules directory:

  ```sh
  git clone https://github.com/anselmes/zephyr-lang-swift modules/lang/swift
  ```

Then, in your `CMakeLists.txt`, uncomment the following line:

  ```cmake
  # set(ZEPHYR_EXTRA_MODULES ${{CMAKE_CURRENT_SOURCE_DIR}}/modules/lang/swift)
  ```

so it becomes:

  ```cmake
  set(ZEPHYR_EXTRA_MODULES ${CMAKE_CURRENT_SOURCE_DIR}/modules/lang/swift)
  ```

## 2. Add as a west manifest project

Alternatively, add the following to `$ZEPHYR_BASE/submanifests/optional.yaml` (no need to uncomment anything in CMakeLists.txt):

  ```yaml
  manifest:
    remotes:
      ...
      - name: anselmes
        url-base: https://github.com/anselmes
    ...
    projects:
      ...
      - name: zephyr-lang-swift
        revision: main
        path: modules/lang/swift
        remotes: anselmes
        groups:
          - optional
  ```

## 3. Use the Zephyr mirror

You can also use the Zephyr mirror with Swift support at: [https://github.com/anselmes/zephyr](https://github.com/anselmes/zephyr)
