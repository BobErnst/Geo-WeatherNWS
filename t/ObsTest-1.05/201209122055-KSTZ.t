#!perl -T

use strict;
use warnings;

# Test 201209122055-KSTZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/09/12 20:55 KSTZ 122055Z 11012KT 10SM BKN022 BKN028 28/23 A3005 RMK A01 WIND DATA UNRELIABLE WHEN WIND DIRECTION IS BETWEEN 180 AND 270 DEGREES 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/09/12 20:55 KSTZ 122055Z 11012KT 10SM BKN022 BKN028 28/23 A3005 RMK A01 WIND DATA UNRELIABLE WHEN WIND DIRECTION IS BETWEEN 180 AND 270 DEGREES ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201209122055-KSTZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN022','BKN028'], 'cloudlevel_arrayref 201209122055-KSTZ');
is($rpt->{code}, 'KSTZ', 'code 201209122055-KSTZ');
is($rpt->{conditions1}, undef, 'conditions1 201209122055-KSTZ');
is($rpt->{conditions2}, undef, 'conditions2 201209122055-KSTZ');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201209122055-KSTZ');
is($rpt->{day}, '12', 'day 201209122055-KSTZ');
is($rpt->{dewpoint_c}, '23', 'dewpoint_c 201209122055-KSTZ');
is($rpt->{dewpoint_f}, '73', 'dewpoint_f 201209122055-KSTZ');
is($rpt->{error}, undef, 'error 201209122055-KSTZ');
is($rpt->{errortext}, undef, 'errortext 201209122055-KSTZ');
is($rpt->{eventbe}, undef, 'eventbe 201209122055-KSTZ');
is($rpt->{heat_index_c}, '31', 'heat_index_c 201209122055-KSTZ');
is($rpt->{heat_index_f}, '88', 'heat_index_f 201209122055-KSTZ');
is($rpt->{http}, undef, 'http 201209122055-KSTZ');
is($rpt->{intensity}, undef, 'intensity 201209122055-KSTZ');
is($rpt->{maintenance}, undef, 'maintenance 201209122055-KSTZ');
is($rpt->{obs}, '2012/09/12 20:55 KSTZ 122055Z 11012KT 10SM BKN022 BKN028 28/23 A3005 RMK A01 WIND DATA UNRELIABLE WHEN WIND DIRECTION IS BETWEEN 180 AND 270 DEGREES ', 'obs 201209122055-KSTZ');
is($rpt->{precipslr}, undef, 'precipslr 201209122055-KSTZ');
is($rpt->{pressure_inhg}, '30.05', 'pressure_inhg 201209122055-KSTZ');
is($rpt->{pressure_kgcm}, '1.03767458', 'pressure_kgcm 201209122055-KSTZ');
is($rpt->{pressure_lbin}, '14.7591777', 'pressure_lbin 201209122055-KSTZ');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201209122055-KSTZ');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201209122055-KSTZ');
is($rpt->{ptemperature}, undef, 'ptemperature 201209122055-KSTZ');
is($rpt->{relative_humidity}, '74', 'relative_humidity 201209122055-KSTZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','A01','WIND','DATA','UNRELIABLE','WHEN','WIND','DIRECTION','IS','BETWEEN','180','AND','270','DEGREES'], 'remark_arrayref 201209122055-KSTZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201209122055-KSTZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201209122055-KSTZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201209122055-KSTZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201209122055-KSTZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201209122055-KSTZ');
is($rpt->{station_type}, 'Manual', 'station_type 201209122055-KSTZ');
is($rpt->{storm}, undef, 'storm 201209122055-KSTZ');
is($rpt->{temperature_c}, '28', 'temperature_c 201209122055-KSTZ');
is($rpt->{temperature_f}, '82', 'temperature_f 201209122055-KSTZ');
is($rpt->{templateout}, undef, 'templateout 201209122055-KSTZ');
is($rpt->{tfile}, undef, 'tfile 201209122055-KSTZ');
is($rpt->{thpressure}, undef, 'thpressure 201209122055-KSTZ');
is($rpt->{time}, '2055', 'time 201209122055-KSTZ');
is($rpt->{visibility_km}, '16', 'visibility_km 201209122055-KSTZ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201209122055-KSTZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201209122055-KSTZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201209122055-KSTZ');
is($rpt->{winddir}, '110', 'winddir 201209122055-KSTZ');
is($rpt->{winddirtext}, 'East', 'winddirtext 201209122055-KSTZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201209122055-KSTZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201209122055-KSTZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201209122055-KSTZ');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201209122055-KSTZ');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201209122055-KSTZ');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201209122055-KSTZ');
