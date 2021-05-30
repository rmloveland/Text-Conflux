#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;
use Test::More tests => 1;
use HTML::TreeBuilder;
use Cwd;
use constant DEBUG => undef;

my $cwd = getcwd;
my $perl = $^X;
my $script = qq[$cwd/confluence2html];

my $got = qx[echo "\n----\n" | $perl $script];
my $expected = <<"EOF";
<style type="text/css"></style><hr></hr>
EOF

my $tree1 = HTML::TreeBuilder->new(ignore_text => 1);
my $parser1 = $tree1->parse($got);
my $roundtripped_got = $parser1->as_HTML;

my $tree2 = HTML::TreeBuilder->new(ignore_text => 1);
my $parser2 = $tree2->parse($expected);
my $roundtripped_expected = $parser2->as_HTML;

do {
    say qq[GOT:      $roundtripped_got];
    say qq[EXPECTED: $roundtripped_expected];
} if DEBUG;

is_deeply( $roundtripped_got, $roundtripped_expected, "Horizontal rule" );
