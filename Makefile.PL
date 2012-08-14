# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Parse dpkg style Package, Status, and Available files';
author 'Adam Jacob <holoway@cpan.org>';
author 'Michal Špaček <skim@cpan.org>';
license 'perl';
name 'DPKG-Parse';
requires 'Carp' => 0;
requires 'Class::C3' => 0;
requires 'Params::Validate' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=DPKG-Parse';
resources 'homepage' => 'https://github.com/tupinek/DPKG-Parse';
resources 'repository' => 'git://github.com/tupinek/DPKG-Parse';
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
