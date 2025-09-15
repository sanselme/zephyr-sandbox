// SPDX-License-Identifier: GPL-3.0
// Copyright (c) 2025 Schubert Anselme <schubert@anselm.es>

import Zephyr

/// The main entry point for the Zephyr Swift application.
///
/// This struct serves as the application's entry point and contains
/// the main execution loop for the program.
///
/// You can either call `hello()` directly or use `Hello.run()`,
/// which internally calls `hello()`.
public func entrypoint() { Hello.run() }
