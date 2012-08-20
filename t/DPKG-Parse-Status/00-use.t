# Pragmas.
use strict;
use warnings;

# Modules.
use Test::More 'tests' => 2;

BEGIN {

	# Test.
	use_ok('DPKG::Parse::Status');
}

# Test.
require_ok('DPKG::Parse::Status');
