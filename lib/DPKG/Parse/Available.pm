#
# DPKG::Parse::Available.pm
# Created by: Adam Jacob, Marchex, <adam@marchex.com>
# Created on: 12/19/2005 02:21:25 PM PST
#

=head1 NAME

DPKG::Parse::Available - Parse the "available" file 

=head1 SYNOPSIS
    
    use DPKG::Parse::Available;
    
    my $available = DPKG::Parse::Available->new;
    while (my $entry = $available->next_package) { 
        print $entry->package . " " . $entry->version . "\n";
    }

    my $postfix = $available->get_package('name' => 'postfix');

=head1 DESCRIPTION

L<DPKG::Parse::Available> parses a dpkg "available" file and turns
each entry into a L<DPKG::Parse::Entry> object.  By default, it uses
the Debian default location of "/var/lib/dpkg/available".

See L<DPKG::Parse> for more information on the get_package and next_package
methods.

See L<DPKG::Parse::Entry> for more information on the entry objects.

=head1 METHODS

=over 4

=cut

package DPKG::Parse::Available;

use Params::Validate qw(:all);
use Class::C3;
use base qw(DPKG::Parse);
use strict;
use warnings;

our $VERSION = 0.02;

=item new('filename' => '/var/lib/dpkg/available')

Creates a new DPKG::Parse::Available object.  By default, it tries to open
/var/lib/dpkg/available.  

=cut
sub new {
    my $pkg = shift;
    my %p = validate(@_,
        {
            'filename' => { 'type' => SCALAR, 'default' => '/var/lib/dpkg/available', 'optional' => 1 },
        }
    );
    my $ref = $pkg->next::method('filename' => $p{'filename'});
    return $ref;
}

1;

__END__
=back

=head1 SEE ALSO

L<DPKG::Parse>, L<DPKG::Parse::Entry>

=head1 AUTHOR

Adam Jacob, C<holoway@cpan.org>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify it under
the same terms as perl itself.

=cut
