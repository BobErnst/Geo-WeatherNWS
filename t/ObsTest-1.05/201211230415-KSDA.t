#!perl -T

use strict;
use warnings;

# Test 201211230415-KSDA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KSDA 230415Z AUTO 31005KT 10SM SCT075 06/00 A3024 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KSDA 230415Z AUTO 31005KT 10SM SCT075 06/00 A3024 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211230415-KSDA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT075'], 'cloudlevel_arrayref 201211230415-KSDA');
is($rpt->{code}, 'KSDA', 'code 201211230415-KSDA');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KSDA');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KSDA');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211230415-KSDA');
is($rpt->{day}, '23', 'day 201211230415-KSDA');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211230415-KSDA');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211230415-KSDA');
is($rpt->{error}, undef, 'error 201211230415-KSDA');
is($rpt->{errortext}, undef, 'errortext 201211230415-KSDA');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KSDA');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201211230415-KSDA');
is($rpt->{heat_index_f}, '120', 'heat_index_f 201211230415-KSDA');
is($rpt->{http}, undef, 'http 201211230415-KSDA');
is($rpt->{intensity}, undef, 'intensity 201211230415-KSDA');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KSDA');
is($rpt->{obs}, '2012/11/23 04:15 KSDA 230415Z AUTO 31005KT 10SM SCT075 06/00 A3024 RMK AO2 ', 'obs 201211230415-KSDA');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KSDA');
is($rpt->{pressure_inhg}, '30.24', 'pressure_inhg 201211230415-KSDA');
is($rpt->{pressure_kgcm}, '1.044235584', 'pressure_kgcm 201211230415-KSDA');
is($rpt->{pressure_lbin}, '14.85249696', 'pressure_lbin 201211230415-KSDA');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211230415-KSDA');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230415-KSDA');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230415-KSDA');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211230415-KSDA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211230415-KSDA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KSDA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KSDA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KSDA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KSDA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KSDA');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KSDA');
is($rpt->{storm}, undef, 'storm 201211230415-KSDA');
is($rpt->{temperature_c}, '06', 'temperature_c 201211230415-KSDA');
is($rpt->{temperature_f}, '43', 'temperature_f 201211230415-KSDA');
is($rpt->{templateout}, undef, 'templateout 201211230415-KSDA');
is($rpt->{tfile}, undef, 'tfile 201211230415-KSDA');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KSDA');
is($rpt->{time}, '0415', 'time 201211230415-KSDA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KSDA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KSDA');
is($rpt->{windchill_c}, '4', 'windchill_c 201211230415-KSDA');
is($rpt->{windchill_f}, '39', 'windchill_f 201211230415-KSDA');
is($rpt->{winddir}, '310', 'winddir 201211230415-KSDA');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211230415-KSDA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KSDA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KSDA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KSDA');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211230415-KSDA');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211230415-KSDA');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211230415-KSDA');
