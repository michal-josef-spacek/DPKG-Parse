# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Entry;
use File::Object;
use File::Slurp qw(slurp);
use Test::More 'tests' => 2;

# Data dir.
my $data_dir = File::Object->new->up->dir('data');

# TODO Errors.

# Test.
my $obj = DPKG::Parse::Entry->new;
isa_ok($obj, 'DPKG::Parse::Entry');

# Test.
my $ex1_entry = slurp($data_dir->file('ex1.entry')->s);
$obj = DPKG::Parse::Entry->new(
	'data' => $ex1_entry,
);
isa_ok($obj, 'DPKG::Parse::Entry');
