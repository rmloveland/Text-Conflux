#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;
use Test::More tests => 1;
use HTML::TreeBuilder;
use Data::Dumper;
use Cwd;

my $cwd = getcwd;

my $perl = $^X;
my $script = qq[../confluence2html];

my $got = qx[echo "----" | $perl $script];

my $expected = <<"EOF";
<style type="text/css">

</style><hr></hr>
EOF

my $t1 = HTML::TreeBuilder->new(ignore_text => 1);
$t1->parse($expected);
my $h1 = $t1->as_HTML;

my $t2 = HTML::TreeBuilder->new(ignore_text => 1);
$t2->parse($got);
my $h2 = $t2->as_HTML;

say qq[H1: ], Dumper $h1;
say qq[H2: ], Dumper $h2;

is_deeply( $h1, $h2, "horizontal rule" );
