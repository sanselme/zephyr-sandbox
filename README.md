# Zephyr Sandbox

---

## Zephyr Swift Integration

This sandbox demonstrates usage of [zephyr-lang-swift](https://github.com/anselmes/zephyr-lang-swift) for Swift development with Zephyr RTOS.

### Usage

#### 1. Clone zephyr-lang-swift as a module

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

#### 2. Add as a west manifest project

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

#### 3. Use the Zephyr mirror

You can also use the Zephyr mirror with Swift support at: [https://github.com/anselmes/zephyr](https://github.com/anselmes/zephyr)

---

## License

Copyright (c) [<schubert@anselm.es>](mailto:schubert@anselm.es)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.
