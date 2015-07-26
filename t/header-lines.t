#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;
use feature qw< say >;

my $perl = $^X;

my $got = `echo "----" | ./confluence2html`;

my $expected = <<EOF;
<p><hr></hr></p>
EOF

ok ( $expected eq $got, "header line" );
