#!perl -T

use strict;
use warnings;
use Test::More tests => 3;
use Geo::WeatherNWS;

my $report_a = new_ok('Geo::WeatherNWS');

SKIP: {
    skip "network dependent test", 2 unless $ENV{TEST_NETWORK};

    # Test connecting to bad server
    my $bogus_site = "bogus-site.example.com";    # doesn't exist
    $report_a->setservername($bogus_site);
    $report_a->settimeout(1);    # no point waiting for the impossible
    my $conditions_a = $report_a->getreport('kstl');
    is( $report_a->{error}, 1, 'error code set for report' );
    is(
        $conditions_a->{errortext},
        "Cannot connect to $bogus_site: Net::FTP: Bad hostname '$bogus_site'",
        'error text set for conditions'
    );
}

