#!perl -T

use strict;
use warnings;

# Test 201211220553-KSRQ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:53 KSRQ 220553Z AUTO 04004KT 10SM CLR 14/12 A3009 RMK AO2 SLP188 T01390122 10178 20139 50004 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:53 KSRQ 220553Z AUTO 04004KT 10SM CLR 14/12 A3009 RMK AO2 SLP188 T01390122 10178 20139 50004 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220553-KSRQ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220553-KSRQ');
is($rpt->{code}, 'KSRQ', 'code 201211220553-KSRQ');
is($rpt->{conditions1}, undef, 'conditions1 201211220553-KSRQ');
is($rpt->{conditions2}, undef, 'conditions2 201211220553-KSRQ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220553-KSRQ');
is($rpt->{day}, '22', 'day 201211220553-KSRQ');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211220553-KSRQ');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211220553-KSRQ');
is($rpt->{error}, undef, 'error 201211220553-KSRQ');
is($rpt->{errortext}, undef, 'errortext 201211220553-KSRQ');
is($rpt->{eventbe}, undef, 'eventbe 201211220553-KSRQ');
is($rpt->{heat_index_c}, '21', 'heat_index_c 201211220553-KSRQ');
is($rpt->{heat_index_f}, '70', 'heat_index_f 201211220553-KSRQ');
is($rpt->{http}, undef, 'http 201211220553-KSRQ');
is($rpt->{intensity}, undef, 'intensity 201211220553-KSRQ');
is($rpt->{maintenance}, undef, 'maintenance 201211220553-KSRQ');
is($rpt->{obs}, '2012/11/22 05:53 KSRQ 220553Z AUTO 04004KT 10SM CLR 14/12 A3009 RMK AO2 SLP188 T01390122 10178 20139 50004 TSNO ', 'obs 201211220553-KSRQ');
is($rpt->{precipslr}, undef, 'precipslr 201211220553-KSRQ');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211220553-KSRQ');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211220553-KSRQ');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211220553-KSRQ');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211220553-KSRQ');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211220553-KSRQ');
is($rpt->{ptemperature}, 'T01390122', 'ptemperature 201211220553-KSRQ');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211220553-KSRQ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.8','T01390122','10178','20139','50004','TSNO'], 'remark_arrayref 201211220553-KSRQ');
is($rpt->{slp_inhg}, '30.08', 'slp_inhg 201211220553-KSRQ');
is($rpt->{slp_kgcm}, '1.038890736', 'slp_kgcm 201211220553-KSRQ');
is($rpt->{slp_lbin}, '14.77647144', 'slp_lbin 201211220553-KSRQ');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211220553-KSRQ');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211220553-KSRQ');
is($rpt->{station_type}, 'Automated', 'station_type 201211220553-KSRQ');
is($rpt->{storm}, 'TSNO', 'storm 201211220553-KSRQ');
is($rpt->{temperature_c}, '14', 'temperature_c 201211220553-KSRQ');
is($rpt->{temperature_f}, '57', 'temperature_f 201211220553-KSRQ');
is($rpt->{templateout}, undef, 'templateout 201211220553-KSRQ');
is($rpt->{tfile}, undef, 'tfile 201211220553-KSRQ');
is($rpt->{thpressure}, '50004', 'thpressure 201211220553-KSRQ');
is($rpt->{time}, '0553', 'time 201211220553-KSRQ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220553-KSRQ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220553-KSRQ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220553-KSRQ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220553-KSRQ');
is($rpt->{winddir}, '40', 'winddir 201211220553-KSRQ');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211220553-KSRQ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220553-KSRQ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220553-KSRQ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220553-KSRQ');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220553-KSRQ');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220553-KSRQ');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220553-KSRQ');
