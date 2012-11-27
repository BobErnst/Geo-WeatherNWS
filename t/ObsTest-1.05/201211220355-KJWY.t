#!perl -T

use strict;
use warnings;

# Test 201211220355-KJWY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KJWY 220355Z AUTO 14003KT 10SM CLR 16/06 A3018 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KJWY 220355Z AUTO 14003KT 10SM CLR 16/06 A3018 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220355-KJWY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220355-KJWY');
is($rpt->{code}, 'KJWY', 'code 201211220355-KJWY');
is($rpt->{conditions1}, undef, 'conditions1 201211220355-KJWY');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KJWY');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220355-KJWY');
is($rpt->{day}, '22', 'day 201211220355-KJWY');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211220355-KJWY');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211220355-KJWY');
is($rpt->{error}, undef, 'error 201211220355-KJWY');
is($rpt->{errortext}, undef, 'errortext 201211220355-KJWY');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KJWY');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211220355-KJWY');
is($rpt->{heat_index_f}, '82', 'heat_index_f 201211220355-KJWY');
is($rpt->{http}, undef, 'http 201211220355-KJWY');
is($rpt->{intensity}, undef, 'intensity 201211220355-KJWY');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KJWY');
is($rpt->{obs}, '2012/11/22 03:55 KJWY 220355Z AUTO 14003KT 10SM CLR 16/06 A3018 RMK AO2 ', 'obs 201211220355-KJWY');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KJWY');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211220355-KJWY');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211220355-KJWY');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211220355-KJWY');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211220355-KJWY');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220355-KJWY');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220355-KJWY');
is($rpt->{relative_humidity}, '51', 'relative_humidity 201211220355-KJWY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220355-KJWY');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KJWY');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KJWY');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KJWY');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KJWY');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KJWY');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KJWY');
is($rpt->{storm}, undef, 'storm 201211220355-KJWY');
is($rpt->{temperature_c}, '16', 'temperature_c 201211220355-KJWY');
is($rpt->{temperature_f}, '61', 'temperature_f 201211220355-KJWY');
is($rpt->{templateout}, undef, 'templateout 201211220355-KJWY');
is($rpt->{tfile}, undef, 'tfile 201211220355-KJWY');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KJWY');
is($rpt->{time}, '0355', 'time 201211220355-KJWY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220355-KJWY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220355-KJWY');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220355-KJWY');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220355-KJWY');
is($rpt->{winddir}, '140', 'winddir 201211220355-KJWY');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211220355-KJWY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KJWY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KJWY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KJWY');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211220355-KJWY');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211220355-KJWY');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211220355-KJWY');
