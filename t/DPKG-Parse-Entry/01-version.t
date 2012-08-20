# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Entry;
use Test::More 'tests' => 1;

# Test.
is($DPKG::Parse::Entry::VERSION, 0.02, 'Version.');
