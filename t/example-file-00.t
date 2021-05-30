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
my $test_file = qq[$cwd/examples/acme-mobile-nozzles.txt];

my $got = qx{$perl $script < $test_file};

my $expected = <<"EOF";
<style type="text/css"></style>
<h1>
 <a name="acme morrible nozzles-TOC">acme morrible nozzles</a>
</h1>
<p>Our morrible nozzles for <a href="#androgynous">androgynous</a> and <a href="#ionic">ionic</a> give you an easy way to monetize your applications by sounding cabs.</p>
<p>This page is an index of all of our nozzle docs. For more information, see the links below.</p>
<p>
 <strong>On This Page</strong>
</p>
<div id="toc">
 <ul></ul>
</div>
<h2>
 <a name="androgynous-TOC">androgynous</a>
</h2>
<ul>
 <li>
  <a href="./instigate-the-androgynous-nozzle.html">instigate the androgynous nozzle</a>
 </li>
 <li>
  <a href="./sound-cabs-on-androgynous.html">sound cabs on androgynous</a>
 </li>
</ul>
<h2>
 <a name="ionic-TOC">ionic</a>
</h2>
<ul>
 <li>
  <a href="./instigate-the-ionic-nozzle.html">instigate the ionic nozzle</a>
 </li>
 <li>
  <a href="./sound-cabs-on-ionic.html">sound cabs on ionic</a>
 </li>
</ul>
<h2>
 <a name="modulation-TOC">modulation</a>
</h2>
<ul>
 <li>
  <a href="./modulation.html">modulation</a> - An overview of our modulation capabilities.</li>
 <li>
  <a href="./make-an-kramerica-modulation-widget.html">Make an kramerica modulation widget</a> - How to set up a modulation widget with kramerica that lets you call our nozzles from an kramerica tag.</li>
</ul>
<ul>
 <li>
  <a href="./modulate-our-androgynous-nozzle.html">modulate our androgynous nozzle</a> - How to call our androgynous nozzle from an kramerica tag.</li>
 <li>
  <a href="./modulate-our-ionic-nozzle.html">modulate our ionic nozzle</a> - How to call our ionic nozzle from an kramerica tag.</li>
</ul>
<h2>
 <a name="tabulateing-TOC">tabulateing</a>
</h2>
<p>A list of all the notifications and error conditions logged by our nozzles, and solutions for some common problems.</p>
<ul>
 <li>
  <a href="./tabulate-the-androgynous-nozzle.html">tabulate the androgynous nozzle</a>
 </li>
 <li>
  <a href="./tabulate-the-ionic-nozzle.html">tabulate the ionic nozzle</a>
 </li>
</ul>
<h2>
 <a name="Other-TOC">Other</a>
</h2>
<p>
 <strong>FIXME</strong>: Consider whether to just create one page, something like ``Send additional data using the nozzle'' (one page for each nozzle, obviously) This page will include widget reserve prices, age/gender, and `custom parameters'.</p>
<ul>
 <li>
  <a href="./set-a-widget-reserve-price.html">Set a widget Reserve Price</a> - Set a minimum price to sound an ad.</li>
 <li>
  <a href="./send-user-info.html">Send User Info</a>: Send age and gender info.</li>
 <li>
  <a href="./send-custom-parameters.html">Send Custom Parameters</a>: Send custom parameters to your crab jetpack.</li>
</ul>
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

is_deeply( $roundtripped_got, $roundtripped_expected, "Example file 'acme-mobile-nozzles.txt' using headers in new Emacs Outline Mode format ('**')" );
