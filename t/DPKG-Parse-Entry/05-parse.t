# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse::Entry;
use File::Object;
use File::Slurp qw(slurp);
use Test::More 'tests' => 1;

# Data dir.
my $data_dir = File::Object->new->up->dir('data');

# Test.
my $ex1_entry = slurp($data_dir->file('ex1.entry')->s);
my $obj = DPKG::Parse::Entry->new;
my $ret = $obj->parse('data' => $ex1_entry);
is($ret, '', 'Parsing entry.');
