# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse;
use Test::More 'tests' => 2;

# Test.
my $obj = DPKG::Parse->new(
	'filename' => 'FAKE_FILENAME',
);
is($obj->debug, 0, 'No debug.');

# Test.
$obj = DPKG::Parse->new(
	'debug' => 1,
	'filename' => 'FAKE_FILENAME',
);
is($obj->debug, 1, 'Debug mode.');
