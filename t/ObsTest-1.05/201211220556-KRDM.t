#!perl -T

use strict;
use warnings;

# Test 201211220556-KRDM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:56 KRDM 220556Z AUTO 35003KT 10SM FEW039 M01/M04 A3025 RMK AO2 SLP260 60000 T10111044 10050 21017 51027 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:56 KRDM 220556Z AUTO 35003KT 10SM FEW039 M01/M04 A3025 RMK AO2 SLP260 60000 T10111044 10050 21017 51027 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211220556-KRDM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW039'], 'cloudlevel_arrayref 201211220556-KRDM');
is($rpt->{code}, 'KRDM', 'code 201211220556-KRDM');
is($rpt->{conditions1}, undef, 'conditions1 201211220556-KRDM');
is($rpt->{conditions2}, undef, 'conditions2 201211220556-KRDM');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211220556-KRDM');
is($rpt->{day}, '22', 'day 201211220556-KRDM');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211220556-KRDM');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211220556-KRDM');
is($rpt->{error}, undef, 'error 201211220556-KRDM');
is($rpt->{errortext}, undef, 'errortext 201211220556-KRDM');
is($rpt->{eventbe}, undef, 'eventbe 201211220556-KRDM');
is($rpt->{heat_index_c}, '79', 'heat_index_c 201211220556-KRDM');
is($rpt->{heat_index_f}, '174', 'heat_index_f 201211220556-KRDM');
is($rpt->{http}, undef, 'http 201211220556-KRDM');
is($rpt->{intensity}, undef, 'intensity 201211220556-KRDM');
is($rpt->{maintenance}, undef, 'maintenance 201211220556-KRDM');
is($rpt->{obs}, '2012/11/22 05:56 KRDM 220556Z AUTO 35003KT 10SM FEW039 M01/M04 A3025 RMK AO2 SLP260 60000 T10111044 10050 21017 51027 ', 'obs 201211220556-KRDM');
is($rpt->{precipslr}, undef, 'precipslr 201211220556-KRDM');
is($rpt->{pressure_inhg}, '30.25', 'pressure_inhg 201211220556-KRDM');
is($rpt->{pressure_kgcm}, '1.0445809', 'pressure_kgcm 201211220556-KRDM');
is($rpt->{pressure_lbin}, '14.8574085', 'pressure_lbin 201211220556-KRDM');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211220556-KRDM');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220556-KRDM');
is($rpt->{ptemperature}, 'T10111044', 'ptemperature 201211220556-KRDM');
is($rpt->{relative_humidity}, '80', 'relative_humidity 201211220556-KRDM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1026,'60000','T10111044','10050','21017','51027'], 'remark_arrayref 201211220556-KRDM');
is($rpt->{slp_inhg}, '30.29', 'slp_inhg 201211220556-KRDM');
is($rpt->{slp_kgcm}, '1.04623272', 'slp_kgcm 201211220556-KRDM');
is($rpt->{slp_lbin}, '14.8808988', 'slp_lbin 201211220556-KRDM');
is($rpt->{slp_mb}, '1026', 'slp_mb 201211220556-KRDM');
is($rpt->{slp_mmhg}, '770', 'slp_mmhg 201211220556-KRDM');
is($rpt->{station_type}, 'Automated', 'station_type 201211220556-KRDM');
is($rpt->{storm}, undef, 'storm 201211220556-KRDM');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211220556-KRDM');
is($rpt->{temperature_f}, '30', 'temperature_f 201211220556-KRDM');
is($rpt->{templateout}, undef, 'templateout 201211220556-KRDM');
is($rpt->{tfile}, undef, 'tfile 201211220556-KRDM');
is($rpt->{thpressure}, '51027', 'thpressure 201211220556-KRDM');
is($rpt->{time}, '0556', 'time 201211220556-KRDM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220556-KRDM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220556-KRDM');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220556-KRDM');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220556-KRDM');
is($rpt->{winddir}, '350', 'winddir 201211220556-KRDM');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211220556-KRDM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220556-KRDM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220556-KRDM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220556-KRDM');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211220556-KRDM');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211220556-KRDM');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211220556-KRDM');
