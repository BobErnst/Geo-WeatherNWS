#!perl -T

use strict;
use warnings;

# Test 201211220556-KHPN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:56 KHPN 220556Z 01005KT 10SM CLR 04/M01 A3022 RMK AO2 SLP235 T00441006 10067 20022 58002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:56 KHPN 220556Z 01005KT 10SM CLR 04/M01 A3022 RMK AO2 SLP235 T00441006 10067 20022 58002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220556-KHPN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220556-KHPN');
is($rpt->{code}, 'KHPN', 'code 201211220556-KHPN');
is($rpt->{conditions1}, undef, 'conditions1 201211220556-KHPN');
is($rpt->{conditions2}, undef, 'conditions2 201211220556-KHPN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220556-KHPN');
is($rpt->{day}, '22', 'day 201211220556-KHPN');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211220556-KHPN');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211220556-KHPN');
is($rpt->{error}, undef, 'error 201211220556-KHPN');
is($rpt->{errortext}, undef, 'errortext 201211220556-KHPN');
is($rpt->{eventbe}, undef, 'eventbe 201211220556-KHPN');
is($rpt->{heat_index_c}, '56', 'heat_index_c 201211220556-KHPN');
is($rpt->{heat_index_f}, '133', 'heat_index_f 201211220556-KHPN');
is($rpt->{http}, undef, 'http 201211220556-KHPN');
is($rpt->{intensity}, undef, 'intensity 201211220556-KHPN');
is($rpt->{maintenance}, undef, 'maintenance 201211220556-KHPN');
is($rpt->{obs}, '2012/11/22 05:56 KHPN 220556Z 01005KT 10SM CLR 04/M01 A3022 RMK AO2 SLP235 T00441006 10067 20022 58002 ', 'obs 201211220556-KHPN');
is($rpt->{precipslr}, undef, 'precipslr 201211220556-KHPN');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211220556-KHPN');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211220556-KHPN');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211220556-KHPN');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220556-KHPN');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220556-KHPN');
is($rpt->{ptemperature}, 'T00441006', 'ptemperature 201211220556-KHPN');
is($rpt->{relative_humidity}, '70', 'relative_humidity 201211220556-KHPN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.5','T00441006','10067','20022','58002'], 'remark_arrayref 201211220556-KHPN');
is($rpt->{slp_inhg}, '30.22', 'slp_inhg 201211220556-KHPN');
is($rpt->{slp_kgcm}, '1.04368342', 'slp_kgcm 201211220556-KHPN');
is($rpt->{slp_lbin}, '14.8446393', 'slp_lbin 201211220556-KHPN');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211220556-KHPN');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211220556-KHPN');
is($rpt->{station_type}, 'Automated', 'station_type 201211220556-KHPN');
is($rpt->{storm}, undef, 'storm 201211220556-KHPN');
is($rpt->{temperature_c}, '04', 'temperature_c 201211220556-KHPN');
is($rpt->{temperature_f}, '39', 'temperature_f 201211220556-KHPN');
is($rpt->{templateout}, undef, 'templateout 201211220556-KHPN');
is($rpt->{tfile}, undef, 'tfile 201211220556-KHPN');
is($rpt->{thpressure}, '58002', 'thpressure 201211220556-KHPN');
is($rpt->{time}, '0556', 'time 201211220556-KHPN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220556-KHPN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220556-KHPN');
is($rpt->{windchill_c}, '2', 'windchill_c 201211220556-KHPN');
is($rpt->{windchill_f}, '35', 'windchill_f 201211220556-KHPN');
is($rpt->{winddir}, '10', 'winddir 201211220556-KHPN');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211220556-KHPN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220556-KHPN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220556-KHPN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220556-KHPN');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211220556-KHPN');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211220556-KHPN');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211220556-KHPN');
