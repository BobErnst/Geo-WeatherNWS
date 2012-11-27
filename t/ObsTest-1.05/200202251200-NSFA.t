#!perl -T

use strict;
use warnings;

# Test 200202251200-NSFA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2002/02/25 12:00 NSFA 251200Z 00000KT 50KM FEW024 SCT150 27/25 Q1010

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2002/02/25 12:00 NSFA 251200Z 00000KT 50KM FEW024 SCT150 27/25 Q1010';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 200202251200-NSFA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW024','SCT150'], 'cloudlevel_arrayref 200202251200-NSFA');
is($rpt->{code}, 'NSFA', 'code 200202251200-NSFA');
is($rpt->{conditions1}, undef, 'conditions1 200202251200-NSFA');
is($rpt->{conditions2}, undef, 'conditions2 200202251200-NSFA');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 200202251200-NSFA');
is($rpt->{day}, '25', 'day 200202251200-NSFA');
is($rpt->{dewpoint_c}, '25', 'dewpoint_c 200202251200-NSFA');
is($rpt->{dewpoint_f}, '77', 'dewpoint_f 200202251200-NSFA');
is($rpt->{error}, undef, 'error 200202251200-NSFA');
is($rpt->{errortext}, undef, 'errortext 200202251200-NSFA');
is($rpt->{eventbe}, undef, 'eventbe 200202251200-NSFA');
is($rpt->{heat_index_c}, '31', 'heat_index_c 200202251200-NSFA');
is($rpt->{heat_index_f}, '87', 'heat_index_f 200202251200-NSFA');
is($rpt->{http}, undef, 'http 200202251200-NSFA');
is($rpt->{intensity}, undef, 'intensity 200202251200-NSFA');
is($rpt->{maintenance}, undef, 'maintenance 200202251200-NSFA');
is($rpt->{obs}, '2002/02/25 12:00 NSFA 251200Z 00000KT 50KM FEW024 SCT150 27/25 Q1010', 'obs 200202251200-NSFA');
is($rpt->{precipslr}, undef, 'precipslr 200202251200-NSFA');
is($rpt->{pressure_inhg}, '29.83', 'pressure_inhg 200202251200-NSFA');
is($rpt->{pressure_kgcm}, '1.030077628', 'pressure_kgcm 200202251200-NSFA');
is($rpt->{pressure_lbin}, '14.65112382', 'pressure_lbin 200202251200-NSFA');
is($rpt->{pressure_mb}, '1010', 'pressure_mb 200202251200-NSFA');
is($rpt->{pressure_mmhg}, '758', 'pressure_mmhg 200202251200-NSFA');
is($rpt->{ptemperature}, undef, 'ptemperature 200202251200-NSFA');
is($rpt->{relative_humidity}, '89', 'relative_humidity 200202251200-NSFA');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 200202251200-NSFA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 200202251200-NSFA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 200202251200-NSFA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 200202251200-NSFA');
is($rpt->{slp_mb}, undef, 'slp_mb 200202251200-NSFA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 200202251200-NSFA');
is($rpt->{station_type}, 'Manual', 'station_type 200202251200-NSFA');
is($rpt->{storm}, undef, 'storm 200202251200-NSFA');
is($rpt->{temperature_c}, '27', 'temperature_c 200202251200-NSFA');
is($rpt->{temperature_f}, '81', 'temperature_f 200202251200-NSFA');
is($rpt->{templateout}, undef, 'templateout 200202251200-NSFA');
is($rpt->{tfile}, undef, 'tfile 200202251200-NSFA');
is($rpt->{thpressure}, undef, 'thpressure 200202251200-NSFA');
is($rpt->{time}, '1200', 'time 200202251200-NSFA');
is($rpt->{visibility_km}, undef, 'visibility_km 200202251200-NSFA');
is($rpt->{visibility_mi}, undef, 'visibility_mi 200202251200-NSFA');
is($rpt->{windchill_c}, undef, 'windchill_c 200202251200-NSFA');
is($rpt->{windchill_f}, undef, 'windchill_f 200202251200-NSFA');
is($rpt->{winddir}, '0', 'winddir 200202251200-NSFA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 200202251200-NSFA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 200202251200-NSFA');
is($rpt->{windgustkts}, '0', 'windgustkts 200202251200-NSFA');
is($rpt->{windgustmph}, '0', 'windgustmph 200202251200-NSFA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 200202251200-NSFA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 200202251200-NSFA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 200202251200-NSFA');
