# Generated file.
use utf8;
use ExtUtils::MakeMaker;
use Alien::Build::MM;

my $abmm              = Alien::Build::MM->new;
my %WriteMakefileArgs = (
  NAME           => 'Alien::potrace',
  DISTNAME       => 'Alien-potrace',
  AUTHOR         => 'Roy Storey <kiwiroy@cpan.org>',
  LICENSE        => 'artistic_2',
  ABSTRACT_FROM  => 'lib/Alien/potrace.pm',
  VERSION_FROM   => 'lib/Alien/potrace.pm',
  EXE_FILES      => [qw()],
  OBJECT         => '',
  BUILD_REQUIRES => {
  'HTTP::Tiny' => '0.044',
  'Path::Tiny' => '0',
  'URI' => '0'
}
,
  TEST_REQUIRES  => {
  'Test::More' => '0.88',
  'Test2::V0'  => '0'
}
,
  PREREQ_PM      => {
  'Alien::Build' => '0',
  'perl' => 'v5.20.0'
}
,
  META_MERGE     => {
    'dynamic_config' => 0,
    'meta-spec'      => {version => 2},
    'resources'      => {
      bugtracker => {web => 'https://github.com/kiwiroy/Alien-potrace/issues'},
      homepage   => 'https://github.com/kiwiroy/Alien-potrace',
      repository => {
        type => 'git',
        url  => 'https://github.com/kiwiroy/Alien-potrace.git',
        web  => 'https://github.com/kiwiroy/Alien-potrace',
      },
    },
    'x_contributors' => []
,
  },
  test => {TESTS => (-e 'META.yml' ? 't/*.t' : 't/*.t xt/*.t')},
);

unless (eval { ExtUtils::MakeMaker->VERSION('6.63_03') }) {
  my $test_requires = delete $WriteMakefileArgs{TEST_REQUIRES};
  @{$WriteMakefileArgs{PREREQ_PM}}{keys %$test_requires} = values %$test_requires;
}

WriteMakefile($abmm->mm_args(%WriteMakefileArgs));


sub MY::postamble {
  $abmm->mm_postamble;
}
