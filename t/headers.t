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

my $got = qx{echo "*** Some cool header" | $perl $script};

my $expected = <<"EOF";
<html>
 <head>
  <style type="text/css"></style>
 </head>
 <body>
  <h3>
   <a name="Some cool header-TOC"></a>
  </h3>
 </body>
</html>
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

is_deeply( $roundtripped_got, $roundtripped_expected, "H3 headers in Outline format (stars)" );
