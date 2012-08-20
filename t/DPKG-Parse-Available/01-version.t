# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Available;
use Test::More 'tests' => 1;

# Test.
is($DPKG::Parse::Available::VERSION, 0.02, 'Version.');
