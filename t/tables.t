#!/usr/bin/env perl

use strict;
use warnings;
use Test::Simple tests => 1;

my $perl = $^X;

my $table = <<EOF;
{table}
|| What A || Really Great || Table You Have There ||
| It has *elements*. | Also, {{code}} items. | What about _italics_? |
| And then there were two rows. | 19 | _"128"_ |
{table}
EOF

my $got = `echo "$table" | ./confluence2html`;

my $expected = <<EOF;
<table>
<tr><th> What A </th><th> Really Great </th><th> Table You Have There </th></tr><tr><td> It has <strong>elements</strong>. </td><td> Also, <code>code</code> items. </td><td> What about <em>italics</em> </td></tr><tr><td> And then there were two rows. </td><td> 19 </td><td> <em>128</em> </td></tr>
</table>

EOF

ok ( $expected eq $got, "Tables work." );
