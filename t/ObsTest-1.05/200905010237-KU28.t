#!perl -T

use strict;
use warnings;

# Test 200905010237-KU28
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2009/05/01 02:37 KU28 010237Z 27005KT 50SM SCT060 OVC250 23/ RMK SLP075 NOSPECI T0233 57017  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2009/05/01 02:37 KU28 010237Z 27005KT 50SM SCT060 OVC250 23/ RMK SLP075 NOSPECI T0233 57017  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 200905010237-KU28');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT060','OVC250'], 'cloudlevel_arrayref 200905010237-KU28');
is($rpt->{code}, 'KU28', 'code 200905010237-KU28');
is($rpt->{conditions1}, undef, 'conditions1 200905010237-KU28');
is($rpt->{conditions2}, undef, 'conditions2 200905010237-KU28');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 200905010237-KU28');
is($rpt->{day}, '01', 'day 200905010237-KU28');
is($rpt->{dewpoint_c}, undef, 'dewpoint_c 200905010237-KU28');
is($rpt->{dewpoint_f}, undef, 'dewpoint_f 200905010237-KU28');
is($rpt->{error}, undef, 'error 200905010237-KU28');
is($rpt->{errortext}, undef, 'errortext 200905010237-KU28');
is($rpt->{eventbe}, undef, 'eventbe 200905010237-KU28');
is($rpt->{heat_index_c}, undef, 'heat_index_c 200905010237-KU28');
is($rpt->{heat_index_f}, undef, 'heat_index_f 200905010237-KU28');
is($rpt->{http}, undef, 'http 200905010237-KU28');
is($rpt->{intensity}, undef, 'intensity 200905010237-KU28');
is($rpt->{maintenance}, undef, 'maintenance 200905010237-KU28');
is($rpt->{obs}, '2009/05/01 02:37 KU28 010237Z 27005KT 50SM SCT060 OVC250 23/ RMK SLP075 NOSPECI T0233 57017  ', 'obs 200905010237-KU28');
is($rpt->{precipslr}, undef, 'precipslr 200905010237-KU28');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 200905010237-KU28');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 200905010237-KU28');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 200905010237-KU28');
is($rpt->{pressure_mb}, undef, 'pressure_mb 200905010237-KU28');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 200905010237-KU28');
is($rpt->{ptemperature}, 'T0233', 'ptemperature 200905010237-KU28');
is($rpt->{relative_humidity}, undef, 'relative_humidity 200905010237-KU28');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','1007.5','NOSPECI','T0233','57017'], 'remark_arrayref 200905010237-KU28');
is($rpt->{slp_inhg}, '29.75', 'slp_inhg 200905010237-KU28');
is($rpt->{slp_kgcm}, '1.0273679', 'slp_kgcm 200905010237-KU28');
is($rpt->{slp_lbin}, '14.6125785', 'slp_lbin 200905010237-KU28');
is($rpt->{slp_mb}, '1008', 'slp_mb 200905010237-KU28');
is($rpt->{slp_mmhg}, '756', 'slp_mmhg 200905010237-KU28');
is($rpt->{station_type}, 'Manual', 'station_type 200905010237-KU28');
is($rpt->{storm}, undef, 'storm 200905010237-KU28');
is($rpt->{temperature_c}, undef, 'temperature_c 200905010237-KU28');
is($rpt->{temperature_f}, undef, 'temperature_f 200905010237-KU28');
is($rpt->{templateout}, undef, 'templateout 200905010237-KU28');
is($rpt->{tfile}, undef, 'tfile 200905010237-KU28');
is($rpt->{thpressure}, '57017', 'thpressure 200905010237-KU28');
is($rpt->{time}, '0237', 'time 200905010237-KU28');
is($rpt->{visibility_km}, '80', 'visibility_km 200905010237-KU28');
is($rpt->{visibility_mi}, '50', 'visibility_mi 200905010237-KU28');
is($rpt->{windchill_c}, undef, 'windchill_c 200905010237-KU28');
is($rpt->{windchill_f}, undef, 'windchill_f 200905010237-KU28');
is($rpt->{winddir}, '270', 'winddir 200905010237-KU28');
is($rpt->{winddirtext}, 'West', 'winddirtext 200905010237-KU28');
is($rpt->{windgustkmh}, '0', 'windgustkmh 200905010237-KU28');
is($rpt->{windgustkts}, '0', 'windgustkts 200905010237-KU28');
is($rpt->{windgustmph}, '0', 'windgustmph 200905010237-KU28');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 200905010237-KU28');
is($rpt->{windspeedkts}, '5', 'windspeedkts 200905010237-KU28');
is($rpt->{windspeedmph}, '6', 'windspeedmph 200905010237-KU28');
