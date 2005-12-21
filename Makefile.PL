use inc::Module::Install;

name('DPKG-Parse');
abstract('Parse dpkg style Package, Status, and Available files');
author('Adam Jacob <holoway@cpan.org>');
version_from('lib/DPKG/Parse.pm');
license('perl');

requires('Params::Validate');
requires('Class::C3');
requires('Carp');
build_requires('Test::More');

auto_include();

&WriteAll;
