#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 1;
use HTML::TreeBuilder;

my $perl = $^X;

my $got = `echo "----" | ./confluence2html`;

my $expected = qq[<hr></hr>];

my $tree1 = HTML::TreeBuilder->new;
my $tree2 = HTML::TreeBuilder->new;

my $parsed1 = $tree1->parse($got)->as_HTML;
my $parsed2 = $tree2->parse($expected)->as_HTML;

is_deeply( $parsed1, $parsed2, "header line" );
