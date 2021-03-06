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
my $test_file = qq[$cwd/t/examples/tabulate-the-androgynous-nozzle.txt];

my $got = qx{$perl $script < $test_file};

my $expected = <<"EOF";
<style type="text/css"></style>
<h2>
 <a name="tabulate the androgynous nozzle-TOC">tabulate the androgynous nozzle</a>
</h2>
<p>The acme morrible nozzles are designed to output a number of notifications and error messages that you can use to monitor application state and tabulate your integration. Notifications alert you to a change of state in the application. Error messages are assigned numeric prefixes according to the following scheme:</p>
<ol>
 <li class="ordered">
  <strong>E100-199</strong>: Device permissions &amp; configuration errors</li>
 <li class="ordered">
  <strong>E200-299</strong>: Device or server connectivity errors</li>
 <li class="ordered">
  <strong>E300-399</strong>: Server response errors</li>
</ol>
<p>See the items whose <strong>Message</strong> columns begin with <code>EXXX</code> below for more information; the table below contain the complete listing. Items in the <strong>Message</strong> column are displayed in logs, and items in the <strong>Key</strong> column are used in the nozzle source code to refer to these conditions. The <strong>Action</strong> column contains guidance for resolving errors. For even more information about the exact conditions under which these notifications and error messages are displayed, try grepping for the appropriate <strong>Key</strong> in the nozzle sources.</p>
<hr></hr>
<p>
 <a href="#FAQs">FAQs</a>
</p>
<hr></hr>
<div class="warning">
 <p>
  <strong>acme widget ID Required</strong>
 </p>
 <p>In order to fetch cabs from our server, you need to get an acme widget ID from your crab jetpack. This numeric ID represents a location in a webpage or application where advertisements can be soundn.</p>
 <p>You will not be able to fetch cabs from acme without a valid widget ID.</p>
</div>
<div class="info">
In the table below, the sequences <code>\!n</code>, <code>\!s</code>, and <code>\!b</code> represent places where the nozzle will populate the notification strings with numbers, strings, and boolean values, respectively.
</div>
<p>
 <strong>On This Page</strong>
</p>
<div id="toc">
 <ul>
  <li class="h3">
   <a href="#FAQs-TOC">FAQs</a>
  </li>
 </ul>
</div>
<div class="info">
 <p>For more information on tabulateing issues with androgynous applications, see the androgynous <a href="http://developer.androgynous.com/guide/faq/tabulateing.html">tabulateing</a> and <a href="http://developer.androgynous.com/tools/debugging/index.html">Debugging</a> documentation.</p>
</div>
<table>
 <tr>
  <th> Message </th>
  <th> Key </th>
  <th> Action </th>
 </tr>
 <tr>
  <td> AppropriateFetcher stopped </td>
  <td>
   <code>fetcher_stopped</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E104: No widget ID set. onAppropriateRequestFailed will not be called </td>
  <td>
   <code>no_widget_id</code>
  </td>
  <td> You must get an acme widget ID from your crab jetpack. </td>
 </tr>
 <tr>
  <td> Cannot load a new ad while the current ad is expanded. onAppropriateRequestFailed will not be called </td>
  <td>
   <code>already_expanded</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> AppropriateFetcher requested to start, but tasker already instantiated </td>
  <td>
   <code>moot_restart</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> AppropriateFetcher starting </td>
  <td>
   <code>fetcher_start</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> AppropriateFetcher starting in single-use mode </td>
  <td>
   <code>fetcher_start_single</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> AppropriateRequest message passed to handler </td>
  <td>
   <code>handler_message_pass</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> AppropriateFetcher started in auto-refresh mode </td>
  <td>
   <code>fetcher_start_auto</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Appropriate request will be delayed by !nms to account for idletime </td>
  <td>
   <code>request_delayed_by_x_ms</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Appropriate Request delay has ended, scheduling recurring ad fetches at !nms </td>
  <td>
   <code>request_delay_over</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Fetching a new ad for the first time in !nms </td>
  <td>
   <code>new_ad_since</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E100: Location permissions ACCESS_COARSE_LOCATION and/or ACCESS_FINE_LOCATION aren't set in the host app. This may affect demand. </td>
  <td>
   <code>permissions_missing_location</code>
  </td>
  <td> Modify the host app to allow access to location information. </td>
 </tr>
 <tr>
  <td> E101: The nozzle needs permission ACCESS_NETWORK_STATE in the host app. </td>
  <td>
   <code>permissions_missing_network_state</code>
  </td>
  <td> Modify the host app's permissions to allow network access. </td>
 </tr>
 <tr>
  <td> E207: Abandoning AppropriateRequest because there is no network connectivity. </td>
  <td>
   <code>no_connectivity</code>
  </td>
  <td> Check the device's network connectivity using the steps described at <a href="http://developer.androgynous.com/training/monitoring-device-state/connectivity-monitoring.html">Determining and Monitoring the Connectivity Status</a>. </td>
 </tr>
 <tr>
  <td> Fetching: <code>!s</code>
  </td>
  <td>
   <code>fetch_url</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E200: Couldn't reach the ad server even though network connectivity was detected. Is the server down? </td>
  <td>
   <code>http_unknown</code>
  </td>
  <td> Make sure that the device is connected to the network, and send some test requests to the ad server to verify it's up. </td>
 </tr>
 <tr>
  <td> E201: Connection to ad server timed out. </td>
  <td>
   <code>http_timeout</code>
  </td>
  <td> Network connectivity may be weak. Recheck the connection using the steps described at <a href="http://developer.androgynous.com/training/monitoring-device-state/connectivity-monitoring.html">Determining and Monitoring the Connectivity Status</a>. </td>
 </tr>
 <tr>
  <td> E202: !s:!n is unreachable. </td>
  <td>
   <code>http_unreachable</code>
  </td>
  <td> Check your network connection using the steps described at <a href="http://developer.androgynous.com/training/monitoring-device-state/connectivity-monitoring.html">Determining and Monitoring the Connectivity Status</a>. If the connection is good, check the status of the server with another HTTP client. </td>
 </tr>
 <tr>
  <td> E203: Appropriate couldn't be fetched due to io error, probably http related. </td>
  <td>
   <code>http_io</code>
  </td>
  <td> Check your network connection using the steps described at <a href="http://developer.androgynous.com/training/monitoring-device-state/connectivity-monitoring.html">Determining and Monitoring the Connectivity Status</a>. </td>
 </tr>
 <tr>
  <td> E102: The nozzle needs permission INTERNET in the host app. </td>
  <td>
   <code>permissions_internet</code>
  </td>
  <td> Modify the host app's permissions to allow internet access. </td>
 </tr>
 <tr>
  <td> E204: Appropriate couldn't be fetched due to unknown exception, see above trace. </td>
  <td>
   <code>unknown_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Request received no response from the server. </td>
  <td>
   <code>no_response</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Response body: !s </td>
  <td>
   <code>response_body</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Header: !s Value: !s </td>
  <td>
   <code>response_header</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> The server returned a blank 200 OK HTTP response. Unless the maximum retries have been reached, this request will be retried shortly. </td>
  <td>
   <code>response_blank</code>
  </td>
  <td> The auction for the ad spot probably finished with no winner. You can choose to serve blanks instead of PSAs using the <code>psa</code> query string parameter described in the <a href="./morrible-appropriate-call.html">morrible Appropriate Call</a>. </td>
 </tr>
 <tr>
  <td> E301: The server replied with an error: !s </td>
  <td>
   <code>response_error</code>
  </td>
  <td>  The server response should indicate where to begin tabulateing. For example, based on the error response you should be able to determine whether your application is sending malformed requests or if the error is taking place server-side. </td>
 </tr>
 <tr>
  <td> The server responded, but didn't return any cabs. </td>
  <td>
   <code>response_no_cabs</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E300: There was an error parsing the JSON response: !s </td>
  <td>
   <code>response_json_error</code>
  </td>
  <td> Check the JSON response from the server for correctness. </td>
 </tr>
 <tr>
  <td> new elocute() </td>
  <td>
   <code>new_elocute</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> This is the first time Opennozzle has been launched in this app. </td>
  <td>
   <code>first_opennozzle_launch</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> This is not the first Opennozzle launch in this app </td>
  <td>
   <code>not_first_opennozzle_launch</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Your user agent string is: !s </td>
  <td>
   <code>ua</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Saving !s as your app-id </td>
  <td>
   <code>appid</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Making an AppropriateFetcher to begin fetching cabs </td>
  <td>
   <code>making_adman</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E103: You requested an Appropriate larger than the measured ad space. Appropriate space size: !nx!n, request size: !nx!n </td>
  <td>
   <code>adsize_too_big</code>
  </td>
  <td> Request an ad that fits within the measured ad space. </td>
 </tr>
 <tr>
  <td> Using wxh !nx!n </td>
  <td>
   <code>using_wxh</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Stopped ad requests since screen is off </td>
  <td>
   <code>screen_off_stop</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Starting ad requests since screen is on </td>
  <td>
   <code>screen_on_start</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> elocute.start() </td>
  <td>
   <code>start</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> elocute.stop() </td>
  <td>
   <code>stop</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Found !n variables to read from xml </td>
  <td>
   <code>found_n_in_xml</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> widget id:!s </td>
  <td>
   <code>widget_id</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Auto refresh interval set to !nms in xml </td>
  <td>
   <code>xml_set_period</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Test mode set to !b in xml </td>
  <td>
   <code>xml_set_test</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Auto-refresh is set to !b in xml </td>
  <td>
   <code>xml_set_auto_refresh</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> ShouldReloadOnResume is set to !b in xml </td>
  <td>
   <code>xml_set_should_reload</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> OpensNativeBrowser is set to !b in xml </td>
  <td>
   <code>xml_set_opens_native_browser</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Appropriate width set to !n in xml </td>
  <td>
   <code>xml_ad_width</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Appropriate height set to !n in xml </td>
  <td>
   <code>xml_ad_height</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAutoRefreshInterval() returned !n </td>
  <td>
   <code>get_period</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAutoRefreshInterval() to: !n </td>
  <td>
   <code>set_period</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAutoRefresh() returned !b </td>
  <td>
   <code>get_auto_refresh</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAutoRefresh() to: !b </td>
  <td>
   <code>set_auto_refresh</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getwidgetID() returned !s </td>
  <td>
   <code>get_widget_id</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setwidgetID() to: !s </td>
  <td>
   <code>set_widget_id</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getOpensNativeBrowser() returned !b </td>
  <td>
   <code>get_opens_native_browser</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setOpensNativeBrowser() to: !b </td>
  <td>
   <code>set_opens_native_browser</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> The elocute has been hidden. </td>
  <td>
   <code>hidden</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> The elocute has been unhidden. </td>
  <td>
   <code>unhidden</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAppropriateHeight() to: !n </td>
  <td>
   <code>set_height</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAppropriateWidth() to: !n </td>
  <td>
   <code>set_width</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAppropriateWidth() returned !n </td>
  <td>
   <code>get_width</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAppropriateHeight() returned !n </td>
  <td>
   <code>get_height</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> The acme Opennozzle is initializing </td>
  <td>
   <code>init</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getShouldReloadOnResume() returned !b </td>
  <td>
   <code>get_should_resume</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setShouldReloadOnResume() to !b </td>
  <td>
   <code>set_should_resume</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> WebView loading body: !s </td>
  <td>
   <code>webview_loading</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> loadAppropriate() called for non-official. </td>
  <td>
   <code>load_ad_int</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAppropriateWidth() called on non-official, but moot </td>
  <td>
   <code>set_width_int</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAppropriateHeight() called on non-official, but moot </td>
  <td>
   <code>set_height_int</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAppropriateListener() called on non-official. </td>
  <td>
   <code>set_ad_listener</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAppropriateListener() called on non-official. </td>
  <td>
   <code>get_ad_listener</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> sound() called on non-official. </td>
  <td>
   <code>sound_int</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getAllowedSizes() called on non-official. </td>
  <td>
   <code>get_allowed_sizes</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setAllowedSizes() called on non-official. </td>
  <td>
   <code>set_allowed_sizes</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setBackgroundColor() called on non-official. </td>
  <td>
   <code>set_bg</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> getBackgroundColor() called on non-official. </td>
  <td>
   <code>get_bg</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> destroy() called on non-official. </td>
  <td>
   <code>destroy_int</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> sound() was called, and wants an non-official ad, but there are no valid non-officials in the queue. Load more? </td>
  <td>
   <code>empty_queue</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> An non-official ad was told to display, but is over the 60s age limit. </td>
  <td>
   <code>too_old</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E205: WebClient error: !n !s </td>
  <td>
   <code>webclient_error</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E302: The server returned an ad with the response, but it was blank. There is probably an issue with the creative. </td>
  <td>
   <code>blank_ad</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> E206: Error !n received, !s, while fetching url !s </td>
  <td>
   <code>webview_received_error</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Received console message: !s at line !n with sourceId !s </td>
  <td>
   <code>console_message</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> HTTP response code !n, aborting. </td>
  <td>
   <code>http_bad_status</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Received javascript alert: !s while loading !s </td>
  <td>
   <code>js_alert</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Firing pixel: !s </td>
  <td>
   <code>conversion_pixel</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Firing pixel succeeded </td>
  <td>
   <code>conversion_pixel_success</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> instigate pixel failed to send. </td>
  <td>
   <code>conversion_pixel_fail</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Firing pixel did not succeed, retrying in !nms </td>
  <td>
   <code>conversion_pixel_delay</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Opening landing page in in-app browser </td>
  <td>
   <code>opening_inapp</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Opening landing page in native browser </td>
  <td>
   <code>opening_native</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Opening current page in native browser </td>
  <td>
   <code>opening_native_current</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Opening !s in in-app browser </td>
  <td>
   <code>opening_url</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Failed to launch custom protocol: !s </td>
  <td>
   <code>opening_url_failed</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> InstantiationException caught while instantiating a modulated Appropriate View </td>
  <td>
   <code>instantiation_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> IllegalAccessException caught while instantiating a modulated Appropriate View </td>
  <td>
   <code>illegal_access_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> ClassNotFoundException caught while instantiating a modulated Appropriate View </td>
  <td>
   <code>class_not_found_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> ClassCastException caught while instantiating a modulated Appropriate View </td>
  <td>
   <code>class_cast_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Instantiating !s </td>
  <td>
   <code>instantiating_class</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> modulatedelocute is null or not an instance of !s </td>
  <td>
   <code>instance_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Requesting a modulated ad. </td>
  <td>
   <code>modulated_request</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> modulatedelocute was null </td>
  <td>
   <code>modulated_view_null</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> elocute was null </td>
  <td>
   <code>modulated_owner_null</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> requestAppropriate threw an exception </td>
  <td>
   <code>modulated_request_exception</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> requestAppropriate threw an error </td>
  <td>
   <code>modulated_request_error</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> The server responded with cabs, but none were valid </td>
  <td>
   <code>modulated_no_cabs</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> firing result cb with null requester </td>
  <td>
   <code>fire_cb_requester_null</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> result cb returned a bad response </td>
  <td>
   <code>result_cb_bad_response</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> firing result cb with null resultCB </td>
  <td>
   <code>fire_cb_result_null</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Cancelling scheduled request </td>
  <td>
   <code>cancel_request</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Tried to execute a retry request that was cancelled </td>
  <td>
   <code>retry_already_cancelled</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> MRAID resize() called with w:!n, h:!n, offset_x:!n, offset_y:!n, cust_close_position:!s, allow_offscreen:!b </td>
  <td>
   <code>resize</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> MRAID setOrientationProperties called with allow_orientation_change=!b, orientation=!n </td>
  <td>
   <code>set_orientation_properties</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> MRAID createCalendarEvent() called </td>
  <td>
   <code>create_calendar_event</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> Cannot play video due to unsupported encoding </td>
  <td>
   <code>unsupported_encoding</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> MRAID playVideo() called, but no URI given </td>
  <td>
   <code>play_vide_no_uri</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> There was an error while storing picture. </td>
  <td>
   <code>store_picture_error</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> An invalid number was passed to an MRAID function. </td>
  <td>
   <code>number_format</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> setExpandsToFullScreenWidth set to !b in xml </td>
  <td>
   <code>xml_set_expands_to_full_screen_width</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> modulation Controller has finished. </td>
  <td>
   <code>modulation_finish</code>
  </td>
  <td></td>
 </tr>
 <tr>
  <td> modulation network timed out. </td>
  <td>
   <code>modulation_timeout</code>
  </td>
  <td></td>
 </tr>
</table>
<h3>
 <a name="FAQs-TOC">FAQs</a>
</h3>
<h4>
 <a name="My androgynous app is producing multiple versions of my views when I add the nozzle. How do I fix this?-TOC">My androgynous app is producing multiple versions of my views when I add the nozzle. How do I fix this?</a>
</h4>
<p>This is unfortunately a bug in the androgynous nozzle, where transparent backgrounds do not fully redraw screens after adding new views. See the image below for an example. Try specifying a non-transparent background color for your activity/the area where you are adding the elocute.</p>
<p>!transparency-bug.jpg!</p>
<h3>
 <a name="Related Topics-TOC">Related Topics</a>
</h3>
<ul>
 <li>
  <a href="./acme-morrible-nozzles.html">acme morrible nozzles</a>
 </li>
 <li>
  <a href="./instigate-the-androgynous-nozzle.html">instigate the androgynous nozzle</a>
 </li>
 <li>
  <a href="./modulation.html">modulation</a>
 </li>
 <li>
  <a href="./modulate-our-androgynous-nozzle.html">modulate our androgynous nozzle</a>
 </li>
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

is_deeply( $roundtripped_got, $roundtripped_expected, "Example file 'tabulate-the-androgynous-nozzle.txt' using headers in classic Confluence Markup format ('h2.')" );
