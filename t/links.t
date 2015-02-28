#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;
use feature qw< say >;

my $perl = $^X;

my $got = `echo "[http://www.example.com]" | ./confluence2html`;

my $expected = <<EOF;
<p><a href="http://www.example.com">http://www.example.com</a></p>
EOF

ok ( $expected eq $got, "external URL link" );
