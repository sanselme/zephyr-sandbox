// SPDX-License-Identifier: GPL-3.0
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>

import Zephyr
import HelloUtils

public func hello(timeout: Int = 1000) {
  let duration = Duration.milliseconds(timeout)
  var errored = false

  print("Hello from Swift!!!")
  sleep(duration)

  while true {
    if case .failure = random(errored: errored) {
      print("Random error occurred")
    }

    print("still running...")
    sleep(duration)

    errored.toggle()
  }
}
