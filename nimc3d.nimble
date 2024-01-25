# Package

version       = "0.1.0"
author        = "Jhon James Quintero Osorio"
description   = "A very basic c3d files support for nim"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["nimc3d"]


# Dependencies

requires "nim == 2.0.2"
requires "binaryparse == 0.2.4"
requires "faststreams#720fc5e5c8e428d9d0af618e1e27c44b42350309"
