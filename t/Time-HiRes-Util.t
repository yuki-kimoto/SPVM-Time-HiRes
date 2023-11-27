use Test::More;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use SPVM 'TestCase::Time::HiRes::Util';

ok(SPVM::TestCase::Time::HiRes::Util->nanoseconds_to_timespec);
  
ok(SPVM::TestCase::Time::HiRes::Util->timespec_to_nanoseconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->microseconds_to_timeval);
  
ok(SPVM::TestCase::Time::HiRes::Util->timeval_to_microseconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->float_seconds_to_timespec);
  
ok(SPVM::TestCase::Time::HiRes::Util->timespec_to_float_seconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->float_seconds_to_timeval);
  
ok(SPVM::TestCase::Time::HiRes::Util->timeval_to_float_seconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->float_seconds_to_nanoseconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->nanoseconds_to_float_seconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->float_seconds_to_microseconds);
  
ok(SPVM::TestCase::Time::HiRes::Util->microseconds_to_float_seconds);
    
ok(SPVM::TestCase::Time::HiRes::Util->timeval_interval);
  
ok(SPVM::TestCase::Time::HiRes::Util->timespec_interval);

done_testing;
