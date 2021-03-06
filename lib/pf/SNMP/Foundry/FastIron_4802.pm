package pf::SNMP::Foundry::FastIron_4802;

=head1 NAME

pf::SNMP::Foundry::FastIron_4802 - Object oriented module to access SNMP
enabled Foundry FastIron 4802 switches

=head1 SYNOPSIS

The pf::SNMP::Foundry::FastIron_4802 module implements an object 
oriented interface to access SNMP enabled Foundry FastIron 4802 switches.

=cut

use strict;
use warnings;
use Log::Log4perl;
use Net::SNMP;
use base ('pf::SNMP::Foundry');

=head1 AUTHOR

Dominik Gehl <dgehl@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2009 Inverse inc.

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
