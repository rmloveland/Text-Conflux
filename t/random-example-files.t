#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp qw< slurp >;
use Test::Simple tests => 12;

my $perl = $^X;

sub test_it {
  my $markup_file = shift;

  my $expected_html = slurp $markup_file.'.html';
  my $actual_html = `$perl confluence2html < $markup_file`;

  ok( $expected_html eq $actual_html, "Output matches contents of $expected_html" );
}

my @files = qw(
		t/files/instigate-the-androgynous-nozzle.txt
		t/files/acme-mobile-nozzles.txt
		t/files/instigate-the-androgynous-nozzle.txt
		t/files/instigate-the-ionic-nozzle.txt
		t/files/modulate-our-androgynous-nozzle.txt
		t/files/modulate-our-ionic-nozzle.txt
		t/files/modulation.txt
		t/files/set-a-widget-reserve-price.txt
		t/files/sound-alarms-on-androgynous.txt
		t/files/sound-alarms-on-ionic.txt
		t/files/tabulate-the-androgynous-nozzle.txt
		t/files/tabulate-the-ionic-nozzle.txt
	     );

for my $f ( @files ) {
  test_it $f;
}
