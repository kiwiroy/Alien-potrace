# NAME

Alien::potrace - Discover or install potrace

# VERSION

0.01

# SYNOPSIS

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

# DESCRIPTION

[Alien::potrace](https://metacpan.org/pod/Alien%3A%3Apotrace) discovers or installs the [potrace](http://potrace.sourceforge.net) software package for transforming
bitmaps into vector graphics. The applications `mkbitmap`, `potrace` and the `libpotrace` library are installed.

# METHODS

[Alien::potrace](https://metacpan.org/pod/Alien%3A%3Apotrace) inherits all methods from [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase).

# SEE ALSO

[Alien::Build](https://metacpan.org/pod/Alien%3A%3ABuild), [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase), [http://potrace.sourceforge.net](http://potrace.sourceforge.net).
