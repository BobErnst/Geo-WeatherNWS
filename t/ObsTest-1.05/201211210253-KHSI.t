#!perl -T

use strict;
use warnings;

# Test 201211210253-KHSI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KHSI 210253Z AUTO 18005KT 10SM CLR 09/02 A3012 RMK AO2 SLP209 T00890017 53003 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KHSI 210253Z AUTO 18005KT 10SM CLR 09/02 A3012 RMK AO2 SLP209 T00890017 53003 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210253-KHSI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210253-KHSI');
is($rpt->{code}, 'KHSI', 'code 201211210253-KHSI');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KHSI');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KHSI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210253-KHSI');
is($rpt->{day}, '21', 'day 201211210253-KHSI');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210253-KHSI');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210253-KHSI');
is($rpt->{error}, undef, 'error 201211210253-KHSI');
is($rpt->{errortext}, undef, 'errortext 201211210253-KHSI');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KHSI');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211210253-KHSI');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211210253-KHSI');
is($rpt->{http}, undef, 'http 201211210253-KHSI');
is($rpt->{intensity}, undef, 'intensity 201211210253-KHSI');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KHSI');
is($rpt->{obs}, '2012/11/21 02:53 KHSI 210253Z AUTO 18005KT 10SM CLR 09/02 A3012 RMK AO2 SLP209 T00890017 53003 ', 'obs 201211210253-KHSI');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KHSI');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210253-KHSI');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210253-KHSI');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210253-KHSI');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210253-KHSI');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210253-KHSI');
is($rpt->{ptemperature}, 'T00890017', 'ptemperature 201211210253-KHSI');
is($rpt->{relative_humidity}, '62', 'relative_humidity 201211210253-KHSI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.9','T00890017','53003'], 'remark_arrayref 201211210253-KHSI');
is($rpt->{slp_inhg}, '30.14', 'slp_inhg 201211210253-KHSI');
is($rpt->{slp_kgcm}, '1.041032148', 'slp_kgcm 201211210253-KHSI');
is($rpt->{slp_lbin}, '14.80692942', 'slp_lbin 201211210253-KHSI');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KHSI');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KHSI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KHSI');
is($rpt->{storm}, undef, 'storm 201211210253-KHSI');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210253-KHSI');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210253-KHSI');
is($rpt->{templateout}, undef, 'templateout 201211210253-KHSI');
is($rpt->{tfile}, undef, 'tfile 201211210253-KHSI');
is($rpt->{thpressure}, '53003', 'thpressure 201211210253-KHSI');
is($rpt->{time}, '0253', 'time 201211210253-KHSI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KHSI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KHSI');
is($rpt->{windchill_c}, '8', 'windchill_c 201211210253-KHSI');
is($rpt->{windchill_f}, '46', 'windchill_f 201211210253-KHSI');
is($rpt->{winddir}, '180', 'winddir 201211210253-KHSI');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210253-KHSI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KHSI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KHSI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KHSI');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210253-KHSI');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210253-KHSI');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210253-KHSI');
