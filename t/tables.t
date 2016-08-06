#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 1;
use HTML::TreeBuilder;

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

my $tree1 = HTML::TreeBuilder->new;
my $tree2 = HTML::TreeBuilder->new;

my $parsed1 = $tree1->parse($got)->as_HTML;
my $parsed2 = $tree2->parse($expected)->as_HTML;

is_deeply( $parsed1, $parsed2, "simple table" );
