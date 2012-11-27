#!perl -T

use strict;
use warnings;

# Test 201211220355-KHBV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KHBV 220355Z AUTO 10004KT 10SM CLR 18/13 A3021 RMK AO2 T01780133 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KHBV 220355Z AUTO 10004KT 10SM CLR 18/13 A3021 RMK AO2 T01780133 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220355-KHBV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220355-KHBV');
is($rpt->{code}, 'KHBV', 'code 201211220355-KHBV');
is($rpt->{conditions1}, undef, 'conditions1 201211220355-KHBV');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KHBV');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220355-KHBV');
is($rpt->{day}, '22', 'day 201211220355-KHBV');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211220355-KHBV');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211220355-KHBV');
is($rpt->{error}, undef, 'error 201211220355-KHBV');
is($rpt->{errortext}, undef, 'errortext 201211220355-KHBV');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KHBV');
is($rpt->{heat_index_c}, '23', 'heat_index_c 201211220355-KHBV');
is($rpt->{heat_index_f}, '74', 'heat_index_f 201211220355-KHBV');
is($rpt->{http}, undef, 'http 201211220355-KHBV');
is($rpt->{intensity}, undef, 'intensity 201211220355-KHBV');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KHBV');
is($rpt->{obs}, '2012/11/22 03:55 KHBV 220355Z AUTO 10004KT 10SM CLR 18/13 A3021 RMK AO2 T01780133 ', 'obs 201211220355-KHBV');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KHBV');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211220355-KHBV');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211220355-KHBV');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211220355-KHBV');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220355-KHBV');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220355-KHBV');
is($rpt->{ptemperature}, 'T01780133', 'ptemperature 201211220355-KHBV');
is($rpt->{relative_humidity}, '73', 'relative_humidity 201211220355-KHBV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01780133'], 'remark_arrayref 201211220355-KHBV');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KHBV');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KHBV');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KHBV');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KHBV');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KHBV');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KHBV');
is($rpt->{storm}, undef, 'storm 201211220355-KHBV');
is($rpt->{temperature_c}, '18', 'temperature_c 201211220355-KHBV');
is($rpt->{temperature_f}, '64', 'temperature_f 201211220355-KHBV');
is($rpt->{templateout}, undef, 'templateout 201211220355-KHBV');
is($rpt->{tfile}, undef, 'tfile 201211220355-KHBV');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KHBV');
is($rpt->{time}, '0355', 'time 201211220355-KHBV');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220355-KHBV');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220355-KHBV');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220355-KHBV');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220355-KHBV');
is($rpt->{winddir}, '100', 'winddir 201211220355-KHBV');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211220355-KHBV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KHBV');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KHBV');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KHBV');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220355-KHBV');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220355-KHBV');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220355-KHBV');
