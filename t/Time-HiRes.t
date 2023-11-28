use Test::More;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use SPVM 'TestCase::Time::HiRes';

use SPVM 'Sys::OS';

ok(SPVM::TestCase::Time::HiRes->gettimeofday);

ok(SPVM::TestCase::Time::HiRes->usleep);

ok(SPVM::TestCase::Time::HiRes->nanosleep);

ok(SPVM::TestCase::Time::HiRes->ualarm);

ok(SPVM::TestCase::Time::HiRes->tv_interval);

ok(SPVM::TestCase::Time::HiRes->time);

ok(SPVM::TestCase::Time::HiRes->sleep);

ok(SPVM::TestCase::Time::HiRes->alarm);

ok(SPVM::TestCase::Time::HiRes->setitimer);

ok(SPVM::TestCase::Time::HiRes->getitimer);

ok(SPVM::TestCase::Time::HiRes->clock_gettime);

ok(SPVM::TestCase::Time::HiRes->clock_getres);

my $not_supported_clock_nanosleep = SPVM::Sys::OS->defined('__APPLE__') || SPVM::Sys::OS->defined('__FreeBSD__') || SPVM::Sys::OS->defined('__OpenBSD__');

if ($not_supported_clock_nanosleep) {
  eval { SPVM::TestCase::Time::HiRes->clock_nanosleep };
  like ($@, qr|not supported|);
}
else {
  ok(SPVM::TestCase::Time::HiRes->clock_nanosleep);
}

ok(SPVM::TestCase::Time::HiRes->clock);

done_testing;
