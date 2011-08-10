#!perl -T

use strict;
use warnings;
use Test::More tests => 3;
use Geo::WeatherNWS;

# Test connecting to bad server
my $report_a = new_ok('Geo::WeatherNWS');
$report_a->setservername("bogus-site.example.com");    # doesn't exist
$report_a->settimeout(1);    # no point waiting for the impossible
my $conditions_a = $report_a->getreport('kstl');
is( $report_a->{error}, 1, 'error code set for report' );
is(
    $conditions_a->{errortext},
"Cannot connect to bogus-site.example.com: Net::FTP: Bad hostname 'bogus-site.example.com'",
    'error text set for conditions'
);

