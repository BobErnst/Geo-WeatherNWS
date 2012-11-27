#!perl -T

use strict;
use warnings;

# Test 201211210253-KGLR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KGLR 210253Z AUTO 00000KT 6SM BR OVC012 07/05 A3013 RMK AO2 SLP213 T00720050 51008 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KGLR 210253Z AUTO 00000KT 6SM BR OVC012 07/05 A3013 RMK AO2 SLP213 T00720050 51008 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KGLR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC012'], 'cloudlevel_arrayref 201211210253-KGLR');
is($rpt->{code}, 'KGLR', 'code 201211210253-KGLR');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210253-KGLR');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KGLR');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210253-KGLR');
is($rpt->{day}, '21', 'day 201211210253-KGLR');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210253-KGLR');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210253-KGLR');
is($rpt->{error}, undef, 'error 201211210253-KGLR');
is($rpt->{errortext}, undef, 'errortext 201211210253-KGLR');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KGLR');
is($rpt->{heat_index_c}, '39', 'heat_index_c 201211210253-KGLR');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211210253-KGLR');
is($rpt->{http}, undef, 'http 201211210253-KGLR');
is($rpt->{intensity}, undef, 'intensity 201211210253-KGLR');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KGLR');
is($rpt->{obs}, '2012/11/21 02:53 KGLR 210253Z AUTO 00000KT 6SM BR OVC012 07/05 A3013 RMK AO2 SLP213 T00720050 51008 ', 'obs 201211210253-KGLR');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KGLR');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210253-KGLR');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210253-KGLR');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210253-KGLR');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210253-KGLR');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210253-KGLR');
is($rpt->{ptemperature}, 'T00720050', 'ptemperature 201211210253-KGLR');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210253-KGLR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.3','T00720050','51008'], 'remark_arrayref 201211210253-KGLR');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210253-KGLR');
is($rpt->{slp_kgcm}, '1.041440036', 'slp_kgcm 201211210253-KGLR');
is($rpt->{slp_lbin}, '14.81273094', 'slp_lbin 201211210253-KGLR');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KGLR');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KGLR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KGLR');
is($rpt->{storm}, undef, 'storm 201211210253-KGLR');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210253-KGLR');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210253-KGLR');
is($rpt->{templateout}, undef, 'templateout 201211210253-KGLR');
is($rpt->{tfile}, undef, 'tfile 201211210253-KGLR');
is($rpt->{thpressure}, '51008', 'thpressure 201211210253-KGLR');
is($rpt->{time}, '0253', 'time 201211210253-KGLR');
is($rpt->{visibility_km}, '10', 'visibility_km 201211210253-KGLR');
is($rpt->{visibility_mi}, '6', 'visibility_mi 201211210253-KGLR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KGLR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KGLR');
is($rpt->{winddir}, '0', 'winddir 201211210253-KGLR');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210253-KGLR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KGLR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KGLR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KGLR');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210253-KGLR');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210253-KGLR');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210253-KGLR');
