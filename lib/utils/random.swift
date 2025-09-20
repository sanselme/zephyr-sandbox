// SPDX-License-Identifier: GPL-3.0
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>

import Zephyr

public func random(errored: Bool) -> Result<Int32, Error> {
  var value: Int32 = 0
  if errored {
    let err = Error(errno: ENODEV)
    return .failure(err)
  } else {
    sys_rand_get(&value, MemoryLayout.size(ofValue: value))
    return .success(value)
  }
}
