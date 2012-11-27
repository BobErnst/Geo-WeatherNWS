#!perl -T

use strict;
use warnings;

# Test 201211011959-K5T6
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/01 19:59 K5T6 011959Z 14005KT 10SM SKC 25/M07 A3006 RMK UNOFFICIAL 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/01 19:59 K5T6 011959Z 14005KT 10SM SKC 25/M07 A3006 RMK UNOFFICIAL ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211011959-K5T6');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211011959-K5T6');
is($rpt->{code}, 'K5T6', 'code 201211011959-K5T6');
is($rpt->{conditions1}, undef, 'conditions1 201211011959-K5T6');
is($rpt->{conditions2}, undef, 'conditions2 201211011959-K5T6');
is($rpt->{conditionstext}, undef, 'conditionstext 201211011959-K5T6');
is($rpt->{day}, '01', 'day 201211011959-K5T6');
is($rpt->{dewpoint_c}, '-7', 'dewpoint_c 201211011959-K5T6');
is($rpt->{dewpoint_f}, '19', 'dewpoint_f 201211011959-K5T6');
is($rpt->{error}, undef, 'error 201211011959-K5T6');
is($rpt->{errortext}, undef, 'errortext 201211011959-K5T6');
is($rpt->{eventbe}, undef, 'eventbe 201211011959-K5T6');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211011959-K5T6');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211011959-K5T6');
is($rpt->{http}, undef, 'http 201211011959-K5T6');
is($rpt->{intensity}, undef, 'intensity 201211011959-K5T6');
is($rpt->{maintenance}, undef, 'maintenance 201211011959-K5T6');
is($rpt->{obs}, '2012/11/01 19:59 K5T6 011959Z 14005KT 10SM SKC 25/M07 A3006 RMK UNOFFICIAL ', 'obs 201211011959-K5T6');
is($rpt->{precipslr}, undef, 'precipslr 201211011959-K5T6');
is($rpt->{pressure_inhg}, '30.06', 'pressure_inhg 201211011959-K5T6');
is($rpt->{pressure_kgcm}, '1.038019896', 'pressure_kgcm 201211011959-K5T6');
is($rpt->{pressure_lbin}, '14.76408924', 'pressure_lbin 201211011959-K5T6');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211011959-K5T6');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211011959-K5T6');
is($rpt->{ptemperature}, undef, 'ptemperature 201211011959-K5T6');
is($rpt->{relative_humidity}, '11', 'relative_humidity 201211011959-K5T6');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','UNOFFICIAL'], 'remark_arrayref 201211011959-K5T6');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211011959-K5T6');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211011959-K5T6');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211011959-K5T6');
is($rpt->{slp_mb}, undef, 'slp_mb 201211011959-K5T6');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211011959-K5T6');
is($rpt->{station_type}, 'Manual', 'station_type 201211011959-K5T6');
is($rpt->{storm}, undef, 'storm 201211011959-K5T6');
is($rpt->{temperature_c}, '25', 'temperature_c 201211011959-K5T6');
is($rpt->{temperature_f}, '77', 'temperature_f 201211011959-K5T6');
is($rpt->{templateout}, undef, 'templateout 201211011959-K5T6');
is($rpt->{tfile}, undef, 'tfile 201211011959-K5T6');
is($rpt->{thpressure}, undef, 'thpressure 201211011959-K5T6');
is($rpt->{time}, '1959', 'time 201211011959-K5T6');
is($rpt->{visibility_km}, '16', 'visibility_km 201211011959-K5T6');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211011959-K5T6');
is($rpt->{windchill_c}, undef, 'windchill_c 201211011959-K5T6');
is($rpt->{windchill_f}, undef, 'windchill_f 201211011959-K5T6');
is($rpt->{winddir}, '140', 'winddir 201211011959-K5T6');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211011959-K5T6');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211011959-K5T6');
is($rpt->{windgustkts}, '0', 'windgustkts 201211011959-K5T6');
is($rpt->{windgustmph}, '0', 'windgustmph 201211011959-K5T6');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211011959-K5T6');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211011959-K5T6');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211011959-K5T6');
