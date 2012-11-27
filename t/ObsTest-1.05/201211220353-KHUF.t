#!perl -T

use strict;
use warnings;

# Test 201211220353-KHUF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:53 KHUF 220353Z 00000KT 3SM BR CLR 04/02 A3020 RMK AO2 SLP228 T00440022 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:53 KHUF 220353Z 00000KT 3SM BR CLR 04/02 A3020 RMK AO2 SLP228 T00440022 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220353-KHUF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220353-KHUF');
is($rpt->{code}, 'KHUF', 'code 201211220353-KHUF');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211220353-KHUF');
is($rpt->{conditions2}, undef, 'conditions2 201211220353-KHUF');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211220353-KHUF');
is($rpt->{day}, '22', 'day 201211220353-KHUF');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211220353-KHUF');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211220353-KHUF');
is($rpt->{error}, undef, 'error 201211220353-KHUF');
is($rpt->{errortext}, undef, 'errortext 201211220353-KHUF');
is($rpt->{eventbe}, undef, 'eventbe 201211220353-KHUF');
is($rpt->{heat_index_c}, '50', 'heat_index_c 201211220353-KHUF');
is($rpt->{heat_index_f}, '123', 'heat_index_f 201211220353-KHUF');
is($rpt->{http}, undef, 'http 201211220353-KHUF');
is($rpt->{intensity}, undef, 'intensity 201211220353-KHUF');
is($rpt->{maintenance}, '$', 'maintenance 201211220353-KHUF');
is($rpt->{obs}, '2012/11/22 03:53 KHUF 220353Z 00000KT 3SM BR CLR 04/02 A3020 RMK AO2 SLP228 T00440022 $ ', 'obs 201211220353-KHUF');
is($rpt->{precipslr}, undef, 'precipslr 201211220353-KHUF');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211220353-KHUF');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211220353-KHUF');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211220353-KHUF');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220353-KHUF');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220353-KHUF');
is($rpt->{ptemperature}, 'T00440022', 'ptemperature 201211220353-KHUF');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211220353-KHUF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.8','T00440022','$'], 'remark_arrayref 201211220353-KHUF');
is($rpt->{slp_inhg}, '30.20', 'slp_inhg 201211220353-KHUF');
is($rpt->{slp_kgcm}, '1.042969616', 'slp_kgcm 201211220353-KHUF');
is($rpt->{slp_lbin}, '14.83448664', 'slp_lbin 201211220353-KHUF');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211220353-KHUF');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211220353-KHUF');
is($rpt->{station_type}, 'Automated', 'station_type 201211220353-KHUF');
is($rpt->{storm}, undef, 'storm 201211220353-KHUF');
is($rpt->{temperature_c}, '04', 'temperature_c 201211220353-KHUF');
is($rpt->{temperature_f}, '39', 'temperature_f 201211220353-KHUF');
is($rpt->{templateout}, undef, 'templateout 201211220353-KHUF');
is($rpt->{tfile}, undef, 'tfile 201211220353-KHUF');
is($rpt->{thpressure}, undef, 'thpressure 201211220353-KHUF');
is($rpt->{time}, '0353', 'time 201211220353-KHUF');
is($rpt->{visibility_km}, '5', 'visibility_km 201211220353-KHUF');
is($rpt->{visibility_mi}, '3', 'visibility_mi 201211220353-KHUF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220353-KHUF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220353-KHUF');
is($rpt->{winddir}, '0', 'winddir 201211220353-KHUF');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220353-KHUF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220353-KHUF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220353-KHUF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220353-KHUF');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220353-KHUF');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220353-KHUF');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220353-KHUF');
