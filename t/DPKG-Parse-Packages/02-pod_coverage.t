# Pragmas.
use strict;
use warnings;

# Modules.
use Test::Pod::Coverage 'tests' => 1;

# Test.
pod_coverage_ok('DPKG::Parse::Packages', 'DPKG::Parse::Packages is covered.');
