# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import nimc3dpkg/[submodule, header]

test "correct welcome":
  check getWelcomeMessage() == "Hello, World!"

test "header creation":
  var header: Header = newHeader()
  check header != nil
  check header.nbOfZerosBeforeHeader == 0
  check header.parametersAddress == 2
