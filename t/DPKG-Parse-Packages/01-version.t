# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Packages;
use Test::More 'tests' => 1;

# Test.
is($DPKG::Parse::Packages::VERSION, 0.02, 'Version.');
