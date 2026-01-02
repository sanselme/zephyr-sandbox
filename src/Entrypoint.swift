// SPDX-License-Identifier: GPL-3.0
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>

import Zephyr
import Hello

struct Hello {
  static func run(timeout: Int = 1000) {
    #if SWIFT_DEBUG_INFO
      print("debug: Module Hello compiled with debug info")
    #endif
    hello(timeout: timeout)
  }
}

public func entrypoint() { Hello.run() }
