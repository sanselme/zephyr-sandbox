// SPDX-License-Identifier: GPL-3.0
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>

import Zephyr

public func random(errored: Bool) -> Result<Int32, Error> {
  if errored { return .failure(Error(errno: ENODEV)) }

  let u: UInt32 = sys_rand32_get()
  let v = Int32(bitPattern: u)
  return .success(v)
}
