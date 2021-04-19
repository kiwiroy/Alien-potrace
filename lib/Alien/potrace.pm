package Alien::potrace;

use strict;
use warnings;
use base qw(Alien::Base);

our $VERSION = '0.01';

1;

=encoding utf8
 
=head1 NAME

Alien::potrace - Discover or install potrace

=head1 VERSION

0.01

=head1 SYNOPSIS

  # Scripts that use potrace or mkbitmap
  use Alien::potrace;
  use Env qw(@PATH);
  unshift @PATH, Alien::potrace->bin_dir;

  # Makefile.PL
  use ExtUtils::MakeMaker;
  use Config;
  use Alien::potrace;
  WriteMakefile(
    ...
    CONFIGURE_REQUIRES => { 'Alien::potrace' => '0' },
    CCFLAGS            => Alien::potrace->cflags . " $Config{ccflags}",
    LIBS               => [ Alien::potrace->libs ],
    ...
  );

=head1 DESCRIPTION
 
L<Alien::potrace> discovers or installs the L<potrace|http://potrace.sourceforge.net> software package for transforming
bitmaps into vector graphics. The applications C<mkbitmap>, C<potrace> and the C<libpotrace> library are installed.

=head1 METHODS
 
L<Alien::potrace> inherits all methods from L<Alien::Base>.

=head1 SEE ALSO
 
L<Alien::Build>, L<Alien::Base>, L<http://potrace.sourceforge.net>.
 
=cut
