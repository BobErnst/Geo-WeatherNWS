#!perl -T

use strict;
use warnings;

# Test 201211220552-KBAN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:52 KBAN 220552Z AUTO 00000KT 10SM CLR M01/M10 A3022 RMK AO2 SLP219 T10111100 10072 21022 52020 TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:52 KBAN 220552Z AUTO 00000KT 10SM CLR M01/M10 A3022 RMK AO2 SLP219 T10111100 10072 21022 52020 TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220552-KBAN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220552-KBAN');
is($rpt->{code}, 'KBAN', 'code 201211220552-KBAN');
is($rpt->{conditions1}, undef, 'conditions1 201211220552-KBAN');
is($rpt->{conditions2}, undef, 'conditions2 201211220552-KBAN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220552-KBAN');
is($rpt->{day}, '22', 'day 201211220552-KBAN');
is($rpt->{dewpoint_c}, '-10', 'dewpoint_c 201211220552-KBAN');
is($rpt->{dewpoint_f}, '14', 'dewpoint_f 201211220552-KBAN');
is($rpt->{error}, undef, 'error 201211220552-KBAN');
is($rpt->{errortext}, undef, 'errortext 201211220552-KBAN');
is($rpt->{eventbe}, undef, 'eventbe 201211220552-KBAN');
is($rpt->{heat_index_c}, '71', 'heat_index_c 201211220552-KBAN');
is($rpt->{heat_index_f}, '160', 'heat_index_f 201211220552-KBAN');
is($rpt->{http}, undef, 'http 201211220552-KBAN');
is($rpt->{intensity}, undef, 'intensity 201211220552-KBAN');
is($rpt->{maintenance}, undef, 'maintenance 201211220552-KBAN');
is($rpt->{obs}, '2012/11/22 05:52 KBAN 220552Z AUTO 00000KT 10SM CLR M01/M10 A3022 RMK AO2 SLP219 T10111100 10072 21022 52020 TSNO  ', 'obs 201211220552-KBAN');
is($rpt->{precipslr}, undef, 'precipslr 201211220552-KBAN');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211220552-KBAN');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211220552-KBAN');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211220552-KBAN');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220552-KBAN');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220552-KBAN');
is($rpt->{ptemperature}, 'T10111100', 'ptemperature 201211220552-KBAN');
is($rpt->{relative_humidity}, '50', 'relative_humidity 201211220552-KBAN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.9','T10111100','10072','21022','52020','TSNO'], 'remark_arrayref 201211220552-KBAN');
is($rpt->{slp_inhg}, '30.17', 'slp_inhg 201211220552-KBAN');
is($rpt->{slp_kgcm}, '1.042051868', 'slp_kgcm 201211220552-KBAN');
is($rpt->{slp_lbin}, '14.82143322', 'slp_lbin 201211220552-KBAN');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211220552-KBAN');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211220552-KBAN');
is($rpt->{station_type}, 'Automated', 'station_type 201211220552-KBAN');
is($rpt->{storm}, 'TSNO', 'storm 201211220552-KBAN');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211220552-KBAN');
is($rpt->{temperature_f}, '30', 'temperature_f 201211220552-KBAN');
is($rpt->{templateout}, undef, 'templateout 201211220552-KBAN');
is($rpt->{tfile}, undef, 'tfile 201211220552-KBAN');
is($rpt->{thpressure}, '52020', 'thpressure 201211220552-KBAN');
is($rpt->{time}, '0552', 'time 201211220552-KBAN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220552-KBAN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220552-KBAN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220552-KBAN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220552-KBAN');
is($rpt->{winddir}, '0', 'winddir 201211220552-KBAN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220552-KBAN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220552-KBAN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220552-KBAN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220552-KBAN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220552-KBAN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220552-KBAN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220552-KBAN');
