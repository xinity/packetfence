=item

=cut 
package pf::Authentication::Source::KerberosSource;
use pf::Authentication::Source;
use Moose;

use pf::config qw($TRUE $FALSE);
use Authen::Krb5::Simple;

extends 'pf::Authentication::Source';

has '+type' => ( default => 'Kerberos' );
has 'host' => (isa => 'Str', is => 'rw', required => 1);
has 'realm' => (isa => 'Str', is => 'rw', required => 1);

sub available_attributes {
  my $self = shift;
  my $super_attributes = $self->SUPER::available_attributes; 
  my $own_attributes = ["username"];
  return [@$super_attributes, @$own_attributes];
}

=item authenticate

=cut
sub authenticate_using_kerberos {
  
  my ( $self, $username, $password ) = @_;
  
  my $kerberos = Authen::Krb5::Simple->new( realm => $self->{'realm'} );
  
  if ($kerberos->authenticate($username, $password)) {
    return ($TRUE, 'Successful authentication using Kerberos.');
  } else {
    return ($FALSE, 'Invalid login or password');
  }
  
  return ($FALSE, 'Unable to connect to Kerberos server');
}

=back

=head1 COPYRIGHT

Copyright (C) 2012 Inverse inc.

=head1 LICENSE 

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;

# vim: set shiftwidth=4:
# vim: set expandtab:
# vim: set backspace=indent,eol,start: