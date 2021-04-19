# -*- mode: perl; -*-
# You can install this project with the following command
#   curl -L http://cpanmin.us | perl - https://github.com/kiwiroy/alien-potrace/archive/master.tar.gz
requires "perl" => "5.20.0"; # signatures
requires 'Alien::Build';

build_requires 'HTTP::Tiny' => '0.044';
build_requires 'Path::Tiny';
build_requires 'URI';

test_requires "Test::More" => "0.88";
test_requires "Test2::V0";
