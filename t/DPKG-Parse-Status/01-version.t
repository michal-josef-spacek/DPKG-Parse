# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Status;
use Test::More 'tests' => 1;

# Test.
is($DPKG::Parse::Status::VERSION, 0.02, 'Version.');
