#!perl -T

use strict;
use warnings;

# Test 201108101451-KSTL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2011/08/10 14:51 KSTL 101451Z 02003KT 10SM FEW080 SCT140 BKN200 24/16 A2991 RMK AO2 SLP115 T0    2440156 53005 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2011/08/10 14:51 KSTL 101451Z 02003KT 10SM FEW080 SCT140 BKN200 24/16 A2991 RMK AO2 SLP115 T0    2440156 53005 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201108101451-KSTL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW080','SCT140','BKN200'], 'cloudlevel_arrayref 201108101451-KSTL');
is($rpt->{code}, 'KSTL', 'code 201108101451-KSTL');
is($rpt->{conditions1}, undef, 'conditions1 201108101451-KSTL');
is($rpt->{conditions2}, undef, 'conditions2 201108101451-KSTL');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201108101451-KSTL');
is($rpt->{day}, '10', 'day 201108101451-KSTL');
is($rpt->{dewpoint_c}, '16', 'dewpoint_c 201108101451-KSTL');
is($rpt->{dewpoint_f}, '61', 'dewpoint_f 201108101451-KSTL');
is($rpt->{error}, undef, 'error 201108101451-KSTL');
is($rpt->{errortext}, undef, 'errortext 201108101451-KSTL');
is($rpt->{eventbe}, undef, 'eventbe 201108101451-KSTL');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201108101451-KSTL');
is($rpt->{heat_index_f}, '77', 'heat_index_f 201108101451-KSTL');
is($rpt->{http}, undef, 'http 201108101451-KSTL');
is($rpt->{intensity}, undef, 'intensity 201108101451-KSTL');
is($rpt->{maintenance}, undef, 'maintenance 201108101451-KSTL');
is($rpt->{obs}, '2011/08/10 14:51 KSTL 101451Z 02003KT 10SM FEW080 SCT140 BKN200 24/16 A2991 RMK AO2 SLP115 T0    2440156 53005 ', 'obs 201108101451-KSTL');
is($rpt->{precipslr}, undef, 'precipslr 201108101451-KSTL');
is($rpt->{pressure_inhg}, '29.91', 'pressure_inhg 201108101451-KSTL');
is($rpt->{pressure_kgcm}, '1.032840156', 'pressure_kgcm 201108101451-KSTL');
is($rpt->{pressure_lbin}, '14.69041614', 'pressure_lbin 201108101451-KSTL');
is($rpt->{pressure_mb}, '1013', 'pressure_mb 201108101451-KSTL');
is($rpt->{pressure_mmhg}, '760', 'pressure_mmhg 201108101451-KSTL');
is($rpt->{ptemperature}, 'T0', 'ptemperature 201108101451-KSTL');
is($rpt->{relative_humidity}, '61', 'relative_humidity 201108101451-KSTL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1011.5','T0','2440156','53005'], 'remark_arrayref 201108101451-KSTL');
is($rpt->{slp_inhg}, '29.86', 'slp_inhg 201108101451-KSTL');
is($rpt->{slp_kgcm}, '1.03144678', 'slp_kgcm 201108101451-KSTL');
is($rpt->{slp_lbin}, '14.6705937', 'slp_lbin 201108101451-KSTL');
is($rpt->{slp_mb}, '1012', 'slp_mb 201108101451-KSTL');
is($rpt->{slp_mmhg}, '759', 'slp_mmhg 201108101451-KSTL');
is($rpt->{station_type}, 'Automated', 'station_type 201108101451-KSTL');
is($rpt->{storm}, undef, 'storm 201108101451-KSTL');
is($rpt->{temperature_c}, '24', 'temperature_c 201108101451-KSTL');
is($rpt->{temperature_f}, '75', 'temperature_f 201108101451-KSTL');
is($rpt->{templateout}, undef, 'templateout 201108101451-KSTL');
is($rpt->{tfile}, undef, 'tfile 201108101451-KSTL');
is($rpt->{thpressure}, '53005', 'thpressure 201108101451-KSTL');
is($rpt->{time}, '1451', 'time 201108101451-KSTL');
is($rpt->{visibility_km}, '16', 'visibility_km 201108101451-KSTL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201108101451-KSTL');
is($rpt->{windchill_c}, undef, 'windchill_c 201108101451-KSTL');
is($rpt->{windchill_f}, undef, 'windchill_f 201108101451-KSTL');
is($rpt->{winddir}, '20', 'winddir 201108101451-KSTL');
is($rpt->{winddirtext}, 'North', 'winddirtext 201108101451-KSTL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201108101451-KSTL');
is($rpt->{windgustkts}, '0', 'windgustkts 201108101451-KSTL');
is($rpt->{windgustmph}, '0', 'windgustmph 201108101451-KSTL');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201108101451-KSTL');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201108101451-KSTL');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201108101451-KSTL');
