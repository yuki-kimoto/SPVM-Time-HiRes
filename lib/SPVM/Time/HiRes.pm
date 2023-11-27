package SPVM::Time::HiRes;

our $VERSION = '0.001';

1;

=head1 Name

SPVM::Time::HiRes - Short Description

=head1 Description

C<SPVM::Time::HiRes> is the C<Time::HiRes> class in L<SPVM> language.

=head1 Usage

  use Time::HiRes;

=head1 Class Methods

=head2 gettimeofday

C<static method gettimeofday : L<Sys::Time::Timeval|SPVM::Sys::Time::Timeval> ();>

=head2 usleep

C<static method usleep : int ($usec : int);>

=head2 nanosleep

C<static method nanosleep : double ($nanoseconds : double);>


=head1 Repository

L<SPVM::Time::HiRes - Github|https://github.com/yuki-kimoto/SPVM-Time-HiRes>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
