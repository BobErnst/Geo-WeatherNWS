#!perl -T

use strict;
use warnings;

# Test 201211230415-KMDJ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KMDJ 230415Z AUTO 09003KT 10SM OVC043 22/14 A3025 RMK A01 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KMDJ 230415Z AUTO 09003KT 10SM OVC043 22/14 A3025 RMK A01 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211230415-KMDJ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC043'], 'cloudlevel_arrayref 201211230415-KMDJ');
is($rpt->{code}, 'KMDJ', 'code 201211230415-KMDJ');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KMDJ');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KMDJ');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211230415-KMDJ');
is($rpt->{day}, '23', 'day 201211230415-KMDJ');
is($rpt->{dewpoint_c}, '14', 'dewpoint_c 201211230415-KMDJ');
is($rpt->{dewpoint_f}, '57', 'dewpoint_f 201211230415-KMDJ');
is($rpt->{error}, undef, 'error 201211230415-KMDJ');
is($rpt->{errortext}, undef, 'errortext 201211230415-KMDJ');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KMDJ');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211230415-KMDJ');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211230415-KMDJ');
is($rpt->{http}, undef, 'http 201211230415-KMDJ');
is($rpt->{intensity}, undef, 'intensity 201211230415-KMDJ');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KMDJ');
is($rpt->{obs}, '2012/11/23 04:15 KMDJ 230415Z AUTO 09003KT 10SM OVC043 22/14 A3025 RMK A01 ', 'obs 201211230415-KMDJ');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KMDJ');
is($rpt->{pressure_inhg}, '30.25', 'pressure_inhg 201211230415-KMDJ');
is($rpt->{pressure_kgcm}, '1.0445809', 'pressure_kgcm 201211230415-KMDJ');
is($rpt->{pressure_lbin}, '14.8574085', 'pressure_lbin 201211230415-KMDJ');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211230415-KMDJ');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230415-KMDJ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230415-KMDJ');
is($rpt->{relative_humidity}, '61', 'relative_humidity 201211230415-KMDJ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','A01'], 'remark_arrayref 201211230415-KMDJ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KMDJ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KMDJ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KMDJ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KMDJ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KMDJ');
is($rpt->{station_type}, 'Manual', 'station_type 201211230415-KMDJ');
is($rpt->{storm}, undef, 'storm 201211230415-KMDJ');
is($rpt->{temperature_c}, '22', 'temperature_c 201211230415-KMDJ');
is($rpt->{temperature_f}, '72', 'temperature_f 201211230415-KMDJ');
is($rpt->{templateout}, undef, 'templateout 201211230415-KMDJ');
is($rpt->{tfile}, undef, 'tfile 201211230415-KMDJ');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KMDJ');
is($rpt->{time}, '0415', 'time 201211230415-KMDJ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KMDJ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KMDJ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KMDJ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KMDJ');
is($rpt->{winddir}, '90', 'winddir 201211230415-KMDJ');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211230415-KMDJ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KMDJ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KMDJ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KMDJ');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211230415-KMDJ');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211230415-KMDJ');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211230415-KMDJ');
