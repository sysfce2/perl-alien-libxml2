package Alien::Libxml2;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Install the C libxml2 library on your system
# VERSION

=head1 SYNOPSIS

Build.PL

 use Alien::Libxml2;
 use Module::Build;
 
 my $alien = Alien::Libxml2;
 my $build = Module::Build->new(
   ...
   extra_compiler_flags => $alien->cflags,
   extra_linker_flags   => $alien->libs,
   ...
 );
 
 $build->create_build_script

Makefile.PL

 use Alien::Libxml2;
 use ExtUtils::MakeMaker;
 use Config;
 
 my $alien = Alien::Libxml2->new;
 WriteMakefile(
   ...
   CFLAGS => $Config{ccflags} . ' ' . Alien::Libxml2->cflags,
   LIBS   => Alien::Libxml2->libs,
 );

=head1 DESCRIPTION

This module provides libxml2 for other modules to use.  There was an 
already existing L<Alien::LibXML>, but it uses the older 
L<Alien::Build::ModuleBuild> and has not bee actively maintained for a 
while.

=head1 SEE ALSO

=over 4

=item L<Alien::LibXML>

Unmaintained Alien for the same library.

=back

=cut

1;
