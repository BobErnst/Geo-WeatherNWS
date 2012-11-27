#!perl -T

use strict;
use warnings;

# Test 201211210253-KPRC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KPRC 210253Z AUTO 19007KT 10SM CLR 09/M04 A3019 RMK AO2 SLP201 T00941039 53006 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KPRC 210253Z AUTO 19007KT 10SM CLR 09/M04 A3019 RMK AO2 SLP201 T00941039 53006 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210253-KPRC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210253-KPRC');
is($rpt->{code}, 'KPRC', 'code 201211210253-KPRC');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KPRC');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KPRC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210253-KPRC');
is($rpt->{day}, '21', 'day 201211210253-KPRC');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211210253-KPRC');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211210253-KPRC');
is($rpt->{error}, undef, 'error 201211210253-KPRC');
is($rpt->{errortext}, undef, 'errortext 201211210253-KPRC');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KPRC');
is($rpt->{heat_index_c}, '37', 'heat_index_c 201211210253-KPRC');
is($rpt->{heat_index_f}, '98', 'heat_index_f 201211210253-KPRC');
is($rpt->{http}, undef, 'http 201211210253-KPRC');
is($rpt->{intensity}, undef, 'intensity 201211210253-KPRC');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KPRC');
is($rpt->{obs}, '2012/11/21 02:53 KPRC 210253Z AUTO 19007KT 10SM CLR 09/M04 A3019 RMK AO2 SLP201 T00941039 53006 TSNO ', 'obs 201211210253-KPRC');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KPRC');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210253-KPRC');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210253-KPRC');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210253-KPRC');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210253-KPRC');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210253-KPRC');
is($rpt->{ptemperature}, 'T00941039', 'ptemperature 201211210253-KPRC');
is($rpt->{relative_humidity}, '40', 'relative_humidity 201211210253-KPRC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.1','T00941039','53006','TSNO'], 'remark_arrayref 201211210253-KPRC');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210253-KPRC');
is($rpt->{slp_kgcm}, '1.040216372', 'slp_kgcm 201211210253-KPRC');
is($rpt->{slp_lbin}, '14.79532638', 'slp_lbin 201211210253-KPRC');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210253-KPRC');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210253-KPRC');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KPRC');
is($rpt->{storm}, 'TSNO', 'storm 201211210253-KPRC');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210253-KPRC');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210253-KPRC');
is($rpt->{templateout}, undef, 'templateout 201211210253-KPRC');
is($rpt->{tfile}, undef, 'tfile 201211210253-KPRC');
is($rpt->{thpressure}, '53006', 'thpressure 201211210253-KPRC');
is($rpt->{time}, '0253', 'time 201211210253-KPRC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KPRC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KPRC');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210253-KPRC');
is($rpt->{windchill_f}, '45', 'windchill_f 201211210253-KPRC');
is($rpt->{winddir}, '190', 'winddir 201211210253-KPRC');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210253-KPRC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KPRC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KPRC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KPRC');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210253-KPRC');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210253-KPRC');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210253-KPRC');
