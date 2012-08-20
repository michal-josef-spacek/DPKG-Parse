# Pragmas.
use strict;
use warnings;

# Modules.
use DPKG::Parse;
use English qw(-no_match_vars);
use File::Object;
use Test::More 'tests' => 1;

# Data dir.
my $data_dir = File::Object->new->up->dir('data');

# Test.
#eval {
#	DPKG::Parse->new('');
#};
#like($EVAL_ERROR, qr/^Odd number of parameters in call to DPKG::Parse::new when named parameters were expected\..+/, 'Odd number of parameters.');

# Test.
#eval {
#	DPKG::Parse->new(
#		'something' => 'value',
#	);
#};
#is($EVAL_ERROR, "Unknown parameter 'something'.\n",
#	'Bad \'something\' parameter.');

# Test.
#eval {
#	DPKG::Parse->new;
#};
#is($EVAL_ERROR, "Unknown parameter 'something'.\n",
#	'Bad \'something\' parameter.');

# Test.
my $obj = DPKG::Parse->new(
	'filename' => $data_dir->file('status')->s,
);
isa_ok($obj, 'DPKG::Parse');
