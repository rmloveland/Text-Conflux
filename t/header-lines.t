#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;
use feature qw< say >;

my $perl = $^X;

my $got = `echo "----" | ./confluence2html`;

my $expected = <<EOF;
<hr></hr>

EOF

ok ( $expected eq $got, "header line" );
