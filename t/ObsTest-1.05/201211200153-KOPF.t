#!perl -T

use strict;
use warnings;

# Test 201211200153-KOPF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KOPF 200153Z 34013KT 10SM SCT015 17/13 A3007 RMK AO2 SLP184 T01670133 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KOPF 200153Z 34013KT 10SM SCT015 17/13 A3007 RMK AO2 SLP184 T01670133 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211200153-KOPF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT015'], 'cloudlevel_arrayref 201211200153-KOPF');
is($rpt->{code}, 'KOPF', 'code 201211200153-KOPF');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KOPF');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KOPF');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211200153-KOPF');
is($rpt->{day}, '20', 'day 201211200153-KOPF');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211200153-KOPF');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211200153-KOPF');
is($rpt->{error}, undef, 'error 201211200153-KOPF');
is($rpt->{errortext}, undef, 'errortext 201211200153-KOPF');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KOPF');
is($rpt->{heat_index_c}, '23', 'heat_index_c 201211200153-KOPF');
is($rpt->{heat_index_f}, '73', 'heat_index_f 201211200153-KOPF');
is($rpt->{http}, undef, 'http 201211200153-KOPF');
is($rpt->{intensity}, undef, 'intensity 201211200153-KOPF');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KOPF');
is($rpt->{obs}, '2012/11/20 01:53 KOPF 200153Z 34013KT 10SM SCT015 17/13 A3007 RMK AO2 SLP184 T01670133 ', 'obs 201211200153-KOPF');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KOPF');
is($rpt->{pressure_inhg}, '30.07', 'pressure_inhg 201211200153-KOPF');
is($rpt->{pressure_kgcm}, '1.038365212', 'pressure_kgcm 201211200153-KOPF');
is($rpt->{pressure_lbin}, '14.76900078', 'pressure_lbin 201211200153-KOPF');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211200153-KOPF');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211200153-KOPF');
is($rpt->{ptemperature}, 'T01670133', 'ptemperature 201211200153-KOPF');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211200153-KOPF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.4','T01670133'], 'remark_arrayref 201211200153-KOPF');
is($rpt->{slp_inhg}, '30.07', 'slp_inhg 201211200153-KOPF');
is($rpt->{slp_kgcm}, '1.038482848', 'slp_kgcm 201211200153-KOPF');
is($rpt->{slp_lbin}, '14.77066992', 'slp_lbin 201211200153-KOPF');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211200153-KOPF');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211200153-KOPF');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KOPF');
is($rpt->{storm}, undef, 'storm 201211200153-KOPF');
is($rpt->{temperature_c}, '17', 'temperature_c 201211200153-KOPF');
is($rpt->{temperature_f}, '63', 'temperature_f 201211200153-KOPF');
is($rpt->{templateout}, undef, 'templateout 201211200153-KOPF');
is($rpt->{tfile}, undef, 'tfile 201211200153-KOPF');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KOPF');
is($rpt->{time}, '0153', 'time 201211200153-KOPF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KOPF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KOPF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200153-KOPF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200153-KOPF');
is($rpt->{winddir}, '340', 'winddir 201211200153-KOPF');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211200153-KOPF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KOPF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KOPF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KOPF');
is($rpt->{windspeedkmh}, '24', 'windspeedkmh 201211200153-KOPF');
is($rpt->{windspeedkts}, '13', 'windspeedkts 201211200153-KOPF');
is($rpt->{windspeedmph}, '15', 'windspeedmph 201211200153-KOPF');
