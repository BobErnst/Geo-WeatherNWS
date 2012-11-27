#!perl -T

use strict;
use warnings;

# Test 201211210251-KSMO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:51 KSMO 210251Z 05003KT 10SM CLR 14/11 A3005 RMK AO2 SLP176 T01440111 53003 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:51 KSMO 210251Z 05003KT 10SM CLR 14/11 A3005 RMK AO2 SLP176 T01440111 53003 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210251-KSMO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210251-KSMO');
is($rpt->{code}, 'KSMO', 'code 201211210251-KSMO');
is($rpt->{conditions1}, undef, 'conditions1 201211210251-KSMO');
is($rpt->{conditions2}, undef, 'conditions2 201211210251-KSMO');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210251-KSMO');
is($rpt->{day}, '21', 'day 201211210251-KSMO');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211210251-KSMO');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211210251-KSMO');
is($rpt->{error}, undef, 'error 201211210251-KSMO');
is($rpt->{errortext}, undef, 'errortext 201211210251-KSMO');
is($rpt->{eventbe}, undef, 'eventbe 201211210251-KSMO');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211210251-KSMO');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211210251-KSMO');
is($rpt->{http}, undef, 'http 201211210251-KSMO');
is($rpt->{intensity}, undef, 'intensity 201211210251-KSMO');
is($rpt->{maintenance}, undef, 'maintenance 201211210251-KSMO');
is($rpt->{obs}, '2012/11/21 02:51 KSMO 210251Z 05003KT 10SM CLR 14/11 A3005 RMK AO2 SLP176 T01440111 53003 ', 'obs 201211210251-KSMO');
is($rpt->{precipslr}, undef, 'precipslr 201211210251-KSMO');
is($rpt->{pressure_inhg}, '30.05', 'pressure_inhg 201211210251-KSMO');
is($rpt->{pressure_kgcm}, '1.03767458', 'pressure_kgcm 201211210251-KSMO');
is($rpt->{pressure_lbin}, '14.7591777', 'pressure_lbin 201211210251-KSMO');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210251-KSMO');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210251-KSMO');
is($rpt->{ptemperature}, 'T01440111', 'ptemperature 201211210251-KSMO');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211210251-KSMO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1017.6','T01440111','53003'], 'remark_arrayref 201211210251-KSMO');
is($rpt->{slp_inhg}, '30.04', 'slp_inhg 201211210251-KSMO');
is($rpt->{slp_kgcm}, '1.037667072', 'slp_kgcm 201211210251-KSMO');
is($rpt->{slp_lbin}, '14.75906688', 'slp_lbin 201211210251-KSMO');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211210251-KSMO');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211210251-KSMO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210251-KSMO');
is($rpt->{storm}, undef, 'storm 201211210251-KSMO');
is($rpt->{temperature_c}, '14', 'temperature_c 201211210251-KSMO');
is($rpt->{temperature_f}, '57', 'temperature_f 201211210251-KSMO');
is($rpt->{templateout}, undef, 'templateout 201211210251-KSMO');
is($rpt->{tfile}, undef, 'tfile 201211210251-KSMO');
is($rpt->{thpressure}, '53003', 'thpressure 201211210251-KSMO');
is($rpt->{time}, '0251', 'time 201211210251-KSMO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210251-KSMO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210251-KSMO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210251-KSMO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210251-KSMO');
is($rpt->{winddir}, '50', 'winddir 201211210251-KSMO');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211210251-KSMO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210251-KSMO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210251-KSMO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210251-KSMO');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210251-KSMO');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210251-KSMO');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210251-KSMO');
