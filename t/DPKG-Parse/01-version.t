# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse;
use Test::More 'tests' => 1;

# Test.
is($DPKG::Parse::VERSION, 0.02, 'Version.');
