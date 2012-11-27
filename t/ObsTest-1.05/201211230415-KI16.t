#!perl -T

use strict;
use warnings;

# Test 201211230415-KI16
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KI16 230415Z AUTO 10SM CLR 03/01 A3018 RMK AO2 T00250010 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KI16 230415Z AUTO 10SM CLR 03/01 A3018 RMK AO2 T00250010 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230415-KI16');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230415-KI16');
is($rpt->{code}, 'KI16', 'code 201211230415-KI16');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KI16');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KI16');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230415-KI16');
is($rpt->{day}, '23', 'day 201211230415-KI16');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211230415-KI16');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211230415-KI16');
is($rpt->{error}, undef, 'error 201211230415-KI16');
is($rpt->{errortext}, undef, 'errortext 201211230415-KI16');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KI16');
is($rpt->{heat_index_c}, '55', 'heat_index_c 201211230415-KI16');
is($rpt->{heat_index_f}, '131', 'heat_index_f 201211230415-KI16');
is($rpt->{http}, undef, 'http 201211230415-KI16');
is($rpt->{intensity}, undef, 'intensity 201211230415-KI16');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KI16');
is($rpt->{obs}, '2012/11/23 04:15 KI16 230415Z AUTO 10SM CLR 03/01 A3018 RMK AO2 T00250010 ', 'obs 201211230415-KI16');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KI16');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211230415-KI16');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211230415-KI16');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211230415-KI16');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211230415-KI16');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211230415-KI16');
is($rpt->{ptemperature}, 'T00250010', 'ptemperature 201211230415-KI16');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211230415-KI16');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00250010'], 'remark_arrayref 201211230415-KI16');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KI16');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KI16');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KI16');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KI16');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KI16');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KI16');
is($rpt->{storm}, undef, 'storm 201211230415-KI16');
is($rpt->{temperature_c}, '03', 'temperature_c 201211230415-KI16');
is($rpt->{temperature_f}, '37', 'temperature_f 201211230415-KI16');
is($rpt->{templateout}, undef, 'templateout 201211230415-KI16');
is($rpt->{tfile}, undef, 'tfile 201211230415-KI16');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KI16');
is($rpt->{time}, '0415', 'time 201211230415-KI16');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KI16');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KI16');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KI16');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KI16');
is($rpt->{winddir}, undef, 'winddir 201211230415-KI16');
is($rpt->{winddirtext}, undef, 'winddirtext 201211230415-KI16');
is($rpt->{windgustkmh}, undef, 'windgustkmh 201211230415-KI16');
is($rpt->{windgustkts}, undef, 'windgustkts 201211230415-KI16');
is($rpt->{windgustmph}, undef, 'windgustmph 201211230415-KI16');
is($rpt->{windspeedkmh}, undef, 'windspeedkmh 201211230415-KI16');
is($rpt->{windspeedkts}, undef, 'windspeedkts 201211230415-KI16');
is($rpt->{windspeedmph}, undef, 'windspeedmph 201211230415-KI16');
