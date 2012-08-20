# Pragmas.
use strict;
use warnings;

# Modules.
use Test::Pod::Coverage 'tests' => 1;

# Test.
pod_coverage_ok('DPKG::Parse::Available', 'DPKG::Parse::Available is covered.');
