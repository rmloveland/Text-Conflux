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
my $script = qq[$cwd/../confluence2html];

=head1 HTTP link with name

Links in the following format should work:

    This is a [cool link|http://www.example.com]

=cut

my $got = qx{echo "This is a [really cool link|http://www.example.com]" | $perl $script};
my $expected = <<EOF;
<html>
 <head>
  <style type="text/css"></style>
 </head>
 <body>
   This is a <p><a href="http://www.example.com">really cool link</a>
  </p>
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

is_deeply( $roundtripped_got, $roundtripped_expected, "HTTP link with name" );
