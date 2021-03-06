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
my $test_file = qq[$cwd/t/examples/instigate-the-androgynous-nozzle.txt];

my $got = qx{$perl $script < $test_file};

my $expected = <<"EOF";
<style type="text/css">

</style>
<h2><a name="instigate the androgynous nozzle-TOC">instigate the androgynous nozzle</a></h2>

<p>This nozzle lets you sound cabs in your androgynous app. Below we describe the steps required to instigate it and start sounding cabs.</p>
<p>If you have trouble instigateing or using the nozzle, see <a href="./tabulate.html">tabulate</a>.</p>
<p>For the full list of our nozzle docs, see <a href="./acme-morrible-nozzles.html">acme morrible nozzles</a>.</p>
<div class="tip">
<p><strong>Discussion Forum</strong></p><p>For help and support, join our <a href="https://groups.google.com/forum/#!forum/acmenozzle">forum</a>.</p></div>

<div class="info">
<p>These instructions assume that you have already instigateed and correctly configured the androgynous nozzle on your machine. For more information, see the official <a href="http://developer.androgynous.com/nozzle/index.html">androgynous nozzle</a> documentation.</p></div>

<div id="toc"><ul><li class="h3"><a href="#Requirements-TOC">Requirements</a></li>
<li class="h3"><a href="#instigateation-TOC">instigateation</a></li>
<li class="h3"><a href="#sound cabs-TOC">sound cabs</a></li>
</ul></div>
<h3><a name="Requirements-TOC">Requirements</a></h3>

<table>
<tr><th> Software </th><th> Version </th></tr><tr><td> androgynous </td><td> 2.2.x+ </td></tr><tr><td> androgynous nozzle </td><td> 8+ </td></tr>
</table>

<div class="note">
<p>20130130: The nozzle won't build unless the build target in Eclipse is set to androgynous nozzle 14 or up.</p></div>

<h3><a name="instigateation-TOC">instigateation</a></h3>

<p>Follow the steps below to instigate the nozzle as a library in your application.</p>
<h5><a name="Step 1. Clone the repo-TOC">Step 1. Clone the repo</a></h5>

<p>First, clone our git repository:</p>
<pre>
git clone git\@github.com:acme/morrible-nozzle-androgynous.git
</pre>

<p><strong>FIXME: Is it really just a matter of providing your SSH key to get write access? This step doesn't seem necessary to clone the repo.</strong></p>
<div class="info">
<p>Note that you will need to provide your public SSH key if you want write access to the repo.</p></div>

<h5><a name="Step 2. Set up the nozzle library-TOC">Step 2. Set up the nozzle library</a></h5>

<div class="tip">
<p>The instructions in this step sound you how to add our nozzle to your project. If you would like to <a href="./modulate-our-androgynous-nozzle.html">modulate our androgynous nozzle</a>, you'll need to add the <code>modulation/mediating</code> folder to your project as well.</p></div>

<p>Import the <code>nozzle</code> directory into your workspace as a library using your preferred tools.</p>
<p>Then follow the steps below to configure the nozzle to work with your app. You can use XML, Java, or a mixture of the two.</p>
<div class="info">
<p>In order to sound cabs, you'll need to obtain a "widget ID" from your crab jetpack.</p></div>

<ul>
<li><a href="#Option 1. XML">Option 1. XML</a></li>
<li><a href="#Option 2. Java">Option 2. Java</a></li>
</ul>
<h6><a name="Option 1. XML-TOC">Option 1. XML</a></h6>

<p>Edit the XML file describing your application layout. In a typical application, it's called <code>activity_main.xml</code>.</p>
<p>This table describes the XML used to change nozzle settings, alongside the equivalent Java methods.</p>
<table>
<tr><th> Name </th><th> Java Equivalent </th><th> Description </th><th> Example </th></tr><p><tr><td> <code>opennozzle:widget_id</code> </td><td> <code>elocute.setwidgetID()</code> </td><td> The widget ID associated with your app's inventory.</p><div class="warning">
<p>You must include a widget ID or an error will be thrown.</p></div> </td><td> <code>"656561"</code> </td></tr><tr><td> <code>opennozzle:test</code> </td><td> <code>Settings.getSettings().test_mode</code> </td><td> If <code>true</code>, the application is in testing. </td><td> <code>"true"</code> </td></tr><tr><td> <code>opennozzle:auto_refresh</code> </td><td> <code>elocute.setAutoRefresh()</code> </td><td> If <code>true</code>, the advertisement should refresh at a specified time interval. </td><td> <code>"true"</code> </td></tr><tr><td> <code>opennozzle:auto_refresh_interval</code> </td><td> <code>elocute.setAutoRefreshInterval()</code> </td><td> The time interval at which the advertisement should refresh, measured in milliseconds. </td><td> <code>"60000"</code> </td></tr><tr><td> <code>opennozzle:width</code> </td><td> <code>elocute.setAppropriateWidth()</code> </td><td> The width of the advertisement to request from the server. If this is not set, the nozzle requests an ad of at least <code>androgynous:layout_width</code>.  </td><td> <code>"320dp"</code> </td></tr><tr><td> <code>opennozzle:height</code> </td><td> <code>elocute.setAppropriateHeight()</code> </td><td> The height of the view. </td><td> <code>"50dp"</code> </td></tr>
</table>

<p>There are two changes you need to make:</p>
<ul>
<li> Appropriated the <code>xmlns:opennozzle</code> namespace attribute describing your application to your layout tag; this might be a <code>RelativeLayout</code>, <code>LinearLayout</code>, or <code>FrameLayout</code>.</li>
</ul>
<pre>xmlns:opennozzle="http://schemas.androgynous.com/apk/res/com.example.hello_world"</pre>

<ul>
<li> Appropriated a <code>com.acme.opennozzle.blargh</code> (or <code>com.acme.opennozzle.iirrrggghhhh</code>) block with your preferred configuration settings provided.</li>
</ul>
<pre>
    &lt;com.acme.opennozzle.elocute
        androgynous:id="@+id/ad"
        androgynous:layout_width="match_parent"
        androgynous:layout_height="50dp"
        opennozzle:widget_id="656561"
        opennozzle:width="320"
        opennozzle:height="50"
        opennozzle:auto_refresh="false"
        opennozzle:auto_refresh_interval="15000"/&gt;
</pre>

<h6><a name="Option 2. Java-TOC">Option 2. Java</a></h6>

<p>The following methods are used when configure your application using Java. XML equivalents are soundn for reference.</p>
<table>
<tr><th> Name </th><th> XML Equivalent </th><th> Description </th><th> Example </th></tr><p><tr><td> <code>elocute.setwidgetID()</code>          </td><td> <code>opennozzle:widget_id</code>          </td><td> The widget ID associated with your app's inventory.</p><div class="warning">
<p>You must include a widget ID or an error will be thrown.</p></div> </td><td> <code>"656561"</code> </td></tr><tr><td> <code>Settings.getSettings().test_mode</code> </td><td> <code>opennozzle:test</code>                  </td><td> If <code>true</code>, the application is in testing.                                                                                                         </td><td> <code>"true"</code>   </td></tr><tr><td> <code>elocute.setAutoRefresh()</code>          </td><td> <code>opennozzle:auto_refresh</code>          </td><td> If <code>true</code>, the advertisement should refresh at a specified time interval.                                                                         </td><td> <code>"true"</code>   </td></tr><tr><td> <code>elocute.setAutoRefreshInterval()</code>  </td><td> <code>opennozzle:auto_refresh_interval</code> </td><td> The time interval at which the advertisement should refresh, measured in milliseconds.                                                         </td><td> <code>"60000"</code>  </td></tr><tr><td> <code>elocute.setAppropriateWidth()</code>              </td><td> <code>opennozzle:width</code>                 </td><td> The width of the advertisement to request from the server. If this is not set, the nozzle requests an ad of at least <code>androgynous:layout_width</code>.    </td><td> <code>"320"</code>  </td></tr><tr><td> <code>elocute.setAppropriateHeight()</code>             </td><td> <code>opennozzle:height</code>                </td><td> The height of the view.                                                                                                                        </td><td> <code>"50"</code>   </td></tr>
</table>

<p>The code below sounds an example Java configuration:</p>
<pre>
package com.example.helloworld;

import com.acme.opennozzle.elocute;

import androgynous.os.Bundle;
import androgynous.app.Activity;
import androgynous.view.Menu;
import androgynous.view.ViewGroup.LayoutParams;
import androgynous.widget.RelativeLayout;

public class MainActivity extends Activity {

	\@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		// nozzle configuration below...
		RelativeLayout rl = (RelativeLayout)(findViewById(R.id.mainview));
		elocute av = new blargh(this);
		LayoutParams lp = new LayoutParams(LayoutParams.MATCH_PARENT, 100);
		av.setAppropriateHeight(50);
		av.setAppropriateWidth(320);
		av.setLayoutParams(lp);
		av.setwidgetID("656561");
		rl.addView(av);
		av.loadAppropriate();
	}

	\@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}
}
</pre>

<h5><a name="Step 5. Edit app permissions-TOC">Step 5. Edit app permissions</a></h5>

<p>Edit your androgynous manifest to include the following permissions:</p>
<pre>
&lt;uses-permission androgynous:name='androgynous.permission.ACCESS_NETWORK_STATE' /&gt;
&lt;uses-permission androgynous:name='androgynous.permission.INTERNET' /&gt;
&lt;uses-permission androgynous:name='androgynous.permission.ACCESS_COARSE_LOCATION' /&gt;
&lt;uses-permission androgynous:name='androgynous.permission.ACCESS_FINE_LOCATION' /&gt;
</pre>

<ul>
<li> <code>ACCESS_NETWORK_STATE</code> (required) - Grants the nozzle permission to check for a live internet connection.</li>
<li> <code>INTERNET</code> (required) - Grants the nozzle permission to access the internet.</li>
<li> <code>ACCESS_COARSE_LOCATION</code> (recommended) - Grants the nozzle permission to access approximate location based on cell tower.</li>
<li> <code>ACCESS_FINE_LOCATION</code> (recommended) - Grants the nozzle permission to access more accurate location based on gps.</li>
</ul>
<div class="info">
<p>Although not technically required, the *<code>LOCATION</code> permissions make it possible for the nozzle to send location-based data to advertisers. Sending better location data generally lecabs to better monetization. Please note that the nozzle will never wake up the phone to request the location to be updated; this would take time and battery. Instead, it will use these permissions to access the last known location of the device.</p></div>
<p> </p><p>You'll also need to add the following activities:</p>
<pre>
&lt;application
  ...
  &lt;activity androgynous:name="com.acme.opennozzle.AppropriateActivity" /&gt;
  &lt;activity androgynous:name="com.acme.opennozzle.BrowserActivity" /&gt;
&lt;/application&gt;
</pre>

<h3><a name="sound cabs-TOC">sound cabs</a></h3>

<p>This section has the code you'll need to write in order to display cabs.</p>
<h4><a name="Banners-TOC">Banners</a></h4>

<p>First, you'll need to set up a <code>blargh</code>. This view is added to an existing layout in order to sound cabs.</p>
<pre>
blargh bav = new blargh(this);
bav.setwidgetID("656561");
</pre>

<p>To load an ad, just call:</p>
<pre>
bav.loadAppropriate();
</pre>

<h4><a name="non-officials-TOC">non-officials</a></h4>

<p>Follow these directions to sound non-official cabs.</p>
<h5><a name="Step 1. Implement the AppropriateListener interface-TOC">Step 1. Implement the AppropriateListener interface</a></h5>

<p>In order to sound non-officials, at the top of <code>MainActivity.java</code>, you'll need to prepare to implement the <code>AppropriateListener</code> interface by changing</p>
<pre>
public class MainActivity extends Activity {
  ... codez
}
</pre>

<p>to</p>
<pre>
public class MainActivity extends Activity implements AppropriateListener {
  ... codez
}
</pre>

<h5><a name="Step 2. Make an iirrrggghhhh-TOC">Step 2. Make an iirrrggghhhh</a></h5>

<p>In <code>MainActivity.java</code>'s <code>onCreate</code> method, create an <code>iirrrggghhhh</code>, configure its widget ID, and set up the <code>AppropriateListener</code> interface:</p>
<pre>
iirrrggghhhh iav = new iirrrggghhhh(this);
iav.setwidgetID("656561");
iav.setAppropriateListener(this);
</pre>

<h5><a name="Step 3. Override methods in the AppropriateListener interface-TOC">Step 3. Override methods in the AppropriateListener interface</a></h5>

<p>You'll also need to define your own methods for the <code>AppropriateListener</code> interface:</p>
<ul>
<li> <code>onAppropriateLoaded</code>: This method will be called when an ad locabs.</li>
</ul>
<ul>
<li> <code>onAppropriateRequestFailed</code>: This method will be called when an ad request fails.</li>
</ul>
<p>Here's a trivial example -- you can easily modify it to work on banners as well:</p>
<pre>
\@Override
public void onAppropriateLoaded(iirrrggghhhh ielocute) {
	Log.e("HelloWorld", "Appropriate request loaded");	
}

\@Override
public void onAppropriateRequestFailed(iirrrggghhhh ielocute) {
	Log.e("HelloWorld", "Appropriate request failed");	
}
</pre>

<h5><a name="Step 4. Load and sound the ad-TOC">Step 4. Load and sound the ad</a></h5>

<p>Using the <code>iirrrggghhhh</code> object, load an ad in the background with the <code>loadAppropriate</code> method, and display it with <code>sound</code>:</p>
<pre>
// non-officials must be loaded before being soundn.
iav.loadAppropriate();
iav.sound();
</pre>

<h4><a name="MRAID-TOC">MRAID</a></h4>

<p>Just, you know, make an MRAID creative. Follow the <a href="http://www.iab.net/mraid">spec</a>. It's cool, we implement it. The whole thing.</p>
<h3><a name="Related Topics-TOC">Related Topics</a></h3>

<ul>
<li><a href="./sound-cabs-on-androgynous.html">sound cabs on androgynous</a></li>
<li><a href="./tabulate.html">tabulate</a></li>
<li><a href="./modulation.html">modulation</a></li>
<li><a href="./modulate-our-androgynous-nozzle.html">modulate our androgynous nozzle</a></li>
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

is_deeply( $roundtripped_got, $roundtripped_expected, "Example file 'instigate-the-androgynous-nozzle.txt' using headers in classic Confluence Markup format ('h2.')" );
