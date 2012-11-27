#!perl -T

use strict;
use warnings;

# Test 201211210355-KOXV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KOXV 210355Z AUTO 17004KT 7SM CLR 04/01 A3018 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KOXV 210355Z AUTO 17004KT 7SM CLR 04/01 A3018 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KOXV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KOXV');
is($rpt->{code}, 'KOXV', 'code 201211210355-KOXV');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KOXV');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KOXV');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KOXV');
is($rpt->{day}, '21', 'day 201211210355-KOXV');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210355-KOXV');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210355-KOXV');
is($rpt->{error}, undef, 'error 201211210355-KOXV');
is($rpt->{errortext}, undef, 'errortext 201211210355-KOXV');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KOXV');
is($rpt->{heat_index_c}, '53', 'heat_index_c 201211210355-KOXV');
is($rpt->{heat_index_f}, '128', 'heat_index_f 201211210355-KOXV');
is($rpt->{http}, undef, 'http 201211210355-KOXV');
is($rpt->{intensity}, undef, 'intensity 201211210355-KOXV');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KOXV');
is($rpt->{obs}, '2012/11/21 03:55 KOXV 210355Z AUTO 17004KT 7SM CLR 04/01 A3018 RMK AO2 ', 'obs 201211210355-KOXV');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KOXV');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211210355-KOXV');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211210355-KOXV');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211210355-KOXV');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210355-KOXV');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210355-KOXV');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KOXV');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210355-KOXV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KOXV');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KOXV');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KOXV');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KOXV');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KOXV');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KOXV');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KOXV');
is($rpt->{storm}, undef, 'storm 201211210355-KOXV');
is($rpt->{temperature_c}, '04', 'temperature_c 201211210355-KOXV');
is($rpt->{temperature_f}, '39', 'temperature_f 201211210355-KOXV');
is($rpt->{templateout}, undef, 'templateout 201211210355-KOXV');
is($rpt->{tfile}, undef, 'tfile 201211210355-KOXV');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KOXV');
is($rpt->{time}, '0355', 'time 201211210355-KOXV');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210355-KOXV');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210355-KOXV');
is($rpt->{windchill_c}, '2', 'windchill_c 201211210355-KOXV');
is($rpt->{windchill_f}, '36', 'windchill_f 201211210355-KOXV');
is($rpt->{winddir}, '170', 'winddir 201211210355-KOXV');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210355-KOXV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KOXV');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KOXV');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KOXV');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210355-KOXV');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210355-KOXV');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210355-KOXV');
