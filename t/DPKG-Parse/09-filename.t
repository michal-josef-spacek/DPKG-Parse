# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse;
use File::Object;
use Test::More 'tests' => 2;

# Data dir.
my $data_dir = File::Object->new->up->dir('data');

# Test.
my $obj = DPKG::Parse->new(
	'filename' => 'NO_FILENAME',
);
is($obj->filename, 'NO_FILENAME', 'No real filename.');

# Test.
$obj = DPKG::Parse->new(
	'filename' => $data_dir->file('status')->s,
);
is($obj->filename, $data_dir->file('status')->s, 'Real filename.');
