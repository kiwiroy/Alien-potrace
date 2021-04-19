# -*- mode: perl -*-
use Test2::V0;
use Test::Alien 1.90;
use Test::Alien::Diag 1.90;
use Alien::potrace;

alien_diag 'Alien::potrace';

alien_ok 'Alien::potrace';

my $version = Alien::potrace->version;

subtest 'potrace' => sub {
  run_ok(['potrace', '--version'])->exit_is(0)->out_like(qr/potrace \Q$version\E/)->out_like(qr/Peter Selinger/)
    ->err_like(qr/^$/);
};

subtest 'compile with library header' => sub {
  my $xs = <<'END_XS_CODE';
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <potracelib.h>
 
MODULE = main PACKAGE = main

int init()
CODE:
  RETVAL = 1;
OUTPUT:
  RETVAL
END_XS_CODE

  xs_ok $xs, with_subtest {
    is init(), 1, 'init() returns 1 - successful compile';
  };
};

subtest 'compile and link' => sub {
  my $xs = <<'END_XS_CODE';
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <potracelib.h>
 
MODULE = main PACKAGE = main

int init()
CODE:
  potrace_param_t *param = NULL;
  int res = 0;
  if ((param = potrace_param_default()) != NULL) res = 1;
  if (param) potrace_param_free(param);
  RETVAL = res;
OUTPUT:
  RETVAL
END_XS_CODE

  xs_ok $xs, with_subtest {
    is init(), 1, 'init() returns 1 - successful compile and link';
  };
};

done_testing;
