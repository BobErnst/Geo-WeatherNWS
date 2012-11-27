#!perl -T

use strict;
use warnings;

# Test 201211210352-KSGS
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:52 KSGS 210352Z AUTO 00000KT 7SM 03/01 A3007 RMK AO2 T00320011 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:52 KSGS 210352Z AUTO 00000KT 7SM 03/01 A3007 RMK AO2 T00320011 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210352-KSGS');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211210352-KSGS');
is($rpt->{code}, 'KSGS', 'code 201211210352-KSGS');
is($rpt->{conditions1}, undef, 'conditions1 201211210352-KSGS');
is($rpt->{conditions2}, undef, 'conditions2 201211210352-KSGS');
is($rpt->{conditionstext}, undef, 'conditionstext 201211210352-KSGS');
is($rpt->{day}, '21', 'day 201211210352-KSGS');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210352-KSGS');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210352-KSGS');
is($rpt->{error}, undef, 'error 201211210352-KSGS');
is($rpt->{errortext}, undef, 'errortext 201211210352-KSGS');
is($rpt->{eventbe}, undef, 'eventbe 201211210352-KSGS');
is($rpt->{heat_index_c}, '55', 'heat_index_c 201211210352-KSGS');
is($rpt->{heat_index_f}, '131', 'heat_index_f 201211210352-KSGS');
is($rpt->{http}, undef, 'http 201211210352-KSGS');
is($rpt->{intensity}, undef, 'intensity 201211210352-KSGS');
is($rpt->{maintenance}, undef, 'maintenance 201211210352-KSGS');
is($rpt->{obs}, '2012/11/21 03:52 KSGS 210352Z AUTO 00000KT 7SM 03/01 A3007 RMK AO2 T00320011 ', 'obs 201211210352-KSGS');
is($rpt->{precipslr}, undef, 'precipslr 201211210352-KSGS');
is($rpt->{pressure_inhg}, '30.07', 'pressure_inhg 201211210352-KSGS');
is($rpt->{pressure_kgcm}, '1.038365212', 'pressure_kgcm 201211210352-KSGS');
is($rpt->{pressure_lbin}, '14.76900078', 'pressure_lbin 201211210352-KSGS');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210352-KSGS');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210352-KSGS');
is($rpt->{ptemperature}, 'T00320011', 'ptemperature 201211210352-KSGS');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210352-KSGS');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00320011'], 'remark_arrayref 201211210352-KSGS');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210352-KSGS');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210352-KSGS');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210352-KSGS');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210352-KSGS');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210352-KSGS');
is($rpt->{station_type}, 'Automated', 'station_type 201211210352-KSGS');
is($rpt->{storm}, undef, 'storm 201211210352-KSGS');
is($rpt->{temperature_c}, '03', 'temperature_c 201211210352-KSGS');
is($rpt->{temperature_f}, '37', 'temperature_f 201211210352-KSGS');
is($rpt->{templateout}, undef, 'templateout 201211210352-KSGS');
is($rpt->{tfile}, undef, 'tfile 201211210352-KSGS');
is($rpt->{thpressure}, undef, 'thpressure 201211210352-KSGS');
is($rpt->{time}, '0352', 'time 201211210352-KSGS');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210352-KSGS');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210352-KSGS');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210352-KSGS');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210352-KSGS');
is($rpt->{winddir}, '0', 'winddir 201211210352-KSGS');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210352-KSGS');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210352-KSGS');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210352-KSGS');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210352-KSGS');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210352-KSGS');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210352-KSGS');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210352-KSGS');
