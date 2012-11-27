#!perl -T

use strict;
use warnings;

# Test 201211210256-KEKO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:56 KEKO 210256Z AUTO 24007KT 10SM CLR 09/M02 A3000 RMK AO2 SLP148 T00941017 53002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:56 KEKO 210256Z AUTO 24007KT 10SM CLR 09/M02 A3000 RMK AO2 SLP148 T00941017 53002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210256-KEKO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210256-KEKO');
is($rpt->{code}, 'KEKO', 'code 201211210256-KEKO');
is($rpt->{conditions1}, undef, 'conditions1 201211210256-KEKO');
is($rpt->{conditions2}, undef, 'conditions2 201211210256-KEKO');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210256-KEKO');
is($rpt->{day}, '21', 'day 201211210256-KEKO');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211210256-KEKO');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211210256-KEKO');
is($rpt->{error}, undef, 'error 201211210256-KEKO');
is($rpt->{errortext}, undef, 'errortext 201211210256-KEKO');
is($rpt->{eventbe}, undef, 'eventbe 201211210256-KEKO');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211210256-KEKO');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211210256-KEKO');
is($rpt->{http}, undef, 'http 201211210256-KEKO');
is($rpt->{intensity}, undef, 'intensity 201211210256-KEKO');
is($rpt->{maintenance}, undef, 'maintenance 201211210256-KEKO');
is($rpt->{obs}, '2012/11/21 02:56 KEKO 210256Z AUTO 24007KT 10SM CLR 09/M02 A3000 RMK AO2 SLP148 T00941017 53002 ', 'obs 201211210256-KEKO');
is($rpt->{precipslr}, undef, 'precipslr 201211210256-KEKO');
is($rpt->{pressure_inhg}, '30.00', 'pressure_inhg 201211210256-KEKO');
is($rpt->{pressure_kgcm}, '1.035948', 'pressure_kgcm 201211210256-KEKO');
is($rpt->{pressure_lbin}, '14.73462', 'pressure_lbin 201211210256-KEKO');
is($rpt->{pressure_mb}, '1016', 'pressure_mb 201211210256-KEKO');
is($rpt->{pressure_mmhg}, '762', 'pressure_mmhg 201211210256-KEKO');
is($rpt->{ptemperature}, 'T00941017', 'ptemperature 201211210256-KEKO');
is($rpt->{relative_humidity}, '46', 'relative_humidity 201211210256-KEKO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1014.8','T00941017','53002'], 'remark_arrayref 201211210256-KEKO');
is($rpt->{slp_inhg}, '29.96', 'slp_inhg 201211210256-KEKO');
is($rpt->{slp_kgcm}, '1.034811856', 'slp_kgcm 201211210256-KEKO');
is($rpt->{slp_lbin}, '14.71845624', 'slp_lbin 201211210256-KEKO');
is($rpt->{slp_mb}, '1015', 'slp_mb 201211210256-KEKO');
is($rpt->{slp_mmhg}, '761', 'slp_mmhg 201211210256-KEKO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210256-KEKO');
is($rpt->{storm}, undef, 'storm 201211210256-KEKO');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210256-KEKO');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210256-KEKO');
is($rpt->{templateout}, undef, 'templateout 201211210256-KEKO');
is($rpt->{tfile}, undef, 'tfile 201211210256-KEKO');
is($rpt->{thpressure}, '53002', 'thpressure 201211210256-KEKO');
is($rpt->{time}, '0256', 'time 201211210256-KEKO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210256-KEKO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210256-KEKO');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210256-KEKO');
is($rpt->{windchill_f}, '45', 'windchill_f 201211210256-KEKO');
is($rpt->{winddir}, '240', 'winddir 201211210256-KEKO');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211210256-KEKO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210256-KEKO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210256-KEKO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210256-KEKO');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210256-KEKO');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210256-KEKO');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210256-KEKO');
