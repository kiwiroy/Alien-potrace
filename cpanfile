# -*- mode: perl; -*-
# You can install this project with the following command
#   curl -L http://cpanmin.us | perl - https://github.com/kiwiroy/alien-potrace/archive/master.tar.gz
requires "perl" => "5.20.0"; # signatures
requires 'Alien::Build';

build_requires 'Path::Tiny';

test_requires "Test::More" => "0.88";
