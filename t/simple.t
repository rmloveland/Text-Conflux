#!/usr/bin/perl

use strict;
use warnings;
use File::Slurp qw< slurp >;
use Test::Simple tests => 1;
use URI::File;

my $perl = $^X;

my $raw_markup = 't/install-the-android-sdk.txt';

my $expected_html = slurp 't/install-the-android-sdk.html';
my $actual_html = `$perl confluence2html --stylesheet=bootstrap.css < $raw_markup`;

ok( $expected_html eq $actual_html, "Output matches contents of $expected_html" );
