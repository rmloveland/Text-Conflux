#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;
use feature qw< say >;

my $perl = $^X;

my $got = `echo "A regular external link: [http://example.com]." | ./confluence2html`;

my $expected = '<p>A regular external link: <a href="http://example.com">http://example.com</a>.</p>';

ok ( $expected eq $got, "Got: $got" );
