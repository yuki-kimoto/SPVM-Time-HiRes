package SPVM::Time::HiRes;

our $VERSION = '0.001';

1;

=head1 Name

SPVM::Time::HiRes - High Resolution Time

=head1 Description

The Time::HiRes class in L<SPVM> has methods to manipulate high resolution time.

=head1 Usage

  use Time::HiRes;

=head1 Class Methods

=head2 gettimeofday

C<static method gettimeofday : L<Sys::Time::Timeval|SPVM::Sys::Time::Timeval> ();>

=head2 usleep

C<static method usleep : int ($usec : int);>

=head2 nanosleep

C<static method nanosleep : long ($nanoseconds : long);>

=head2 tv_interval

C<static method tv_interval : double ($a : L<Sys::Time::Timeval|SPVM::Sys::Time::Timeval>, $b : L<Sys::Time::Timeval|SPVM::Sys::Time::Timeval> = undef);>

=head2 time

C<static method time : double ();>

Exceptions:

This method throws the following exception. This method is not implemented because it's clear that the lack of precision will cause future bugs.

=head2 sleep

C<static method sleep : double ($float_seconds : double);>

=head2 alarm

C<static method alarm : double ($float_seconds : double, $interval_float_seconds : double = 0);>

=head2 setitimer

C<static method setitimer : L<Time::HiRes::ItimervalFloat|SPVM::Time::HiRes::ItimervalFloat> ($which : int, $new_itimer_float : L<Time::HiRes::ItimervalFloat|SPVM::Time::HiRes::ItimervalFloat>);>

=head2 getitimer

C<static method getitimer : L<Time::HiRes::ItimervalFloat|SPVM::Time::HiRes::ItimervalFloat> ($which : int);>

=head2 clock_gettime

C<static method clock_gettime : double ($clk_id : int);>

=head2 clock_getres

C<static method clock_getres : double ($clk_id : int);>

=head2 clock_nanosleep

C<static method clock_nanosleep : long ($clockid : int, $nanoseconds : long, $flags : int = 0);>

=head2 clock

C<static method clock : long ();>

=head1 Repository

L<SPVM::Time::HiRes - Github|https://github.com/yuki-kimoto/SPVM-Time-HiRes>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
