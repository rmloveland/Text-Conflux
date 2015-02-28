#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;

my $perl = $^X;

my $table = <<EOF;
{table}
|| What A || Really Great || Table You Have There ||
| It has elements. | Many. | Why? |
{table}
EOF

my $expected = <<EOF;
<table>
<tr><th> What A </th><th> Really Great </th><th> Table You Have There </th></tr><tr><td> It has elements. </td><td> Many. </td><td> Why? </td></tr>
</table>


EOF

my $got = `echo "$table" | ./confluence2html`;

ok ( $expected eq $got, "simple table" );
