#!perl -T

use strict;
use warnings;

# Test 201211210353-KPNC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KPNC 210353Z AUTO 00000KT 10SM CLR 07/04 A3021 RMK AO2 SLP229 T00720039 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KPNC 210353Z AUTO 00000KT 10SM CLR 07/04 A3021 RMK AO2 SLP229 T00720039 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KPNC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KPNC');
is($rpt->{code}, 'KPNC', 'code 201211210353-KPNC');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KPNC');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KPNC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KPNC');
is($rpt->{day}, '21', 'day 201211210353-KPNC');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210353-KPNC');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210353-KPNC');
is($rpt->{error}, undef, 'error 201211210353-KPNC');
is($rpt->{errortext}, undef, 'errortext 201211210353-KPNC');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KPNC');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211210353-KPNC');
is($rpt->{heat_index_f}, '107', 'heat_index_f 201211210353-KPNC');
is($rpt->{http}, undef, 'http 201211210353-KPNC');
is($rpt->{intensity}, undef, 'intensity 201211210353-KPNC');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KPNC');
is($rpt->{obs}, '2012/11/21 03:53 KPNC 210353Z AUTO 00000KT 10SM CLR 07/04 A3021 RMK AO2 SLP229 T00720039 ', 'obs 201211210353-KPNC');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KPNC');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211210353-KPNC');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211210353-KPNC');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211210353-KPNC');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210353-KPNC');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210353-KPNC');
is($rpt->{ptemperature}, 'T00720039', 'ptemperature 201211210353-KPNC');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210353-KPNC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.9','T00720039'], 'remark_arrayref 201211210353-KPNC');
is($rpt->{slp_inhg}, '30.20', 'slp_inhg 201211210353-KPNC');
is($rpt->{slp_kgcm}, '1.043071588', 'slp_kgcm 201211210353-KPNC');
is($rpt->{slp_lbin}, '14.83593702', 'slp_lbin 201211210353-KPNC');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211210353-KPNC');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211210353-KPNC');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KPNC');
is($rpt->{storm}, undef, 'storm 201211210353-KPNC');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210353-KPNC');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210353-KPNC');
is($rpt->{templateout}, undef, 'templateout 201211210353-KPNC');
is($rpt->{tfile}, undef, 'tfile 201211210353-KPNC');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KPNC');
is($rpt->{time}, '0353', 'time 201211210353-KPNC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KPNC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KPNC');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KPNC');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KPNC');
is($rpt->{winddir}, '0', 'winddir 201211210353-KPNC');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KPNC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KPNC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KPNC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KPNC');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KPNC');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KPNC');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KPNC');
