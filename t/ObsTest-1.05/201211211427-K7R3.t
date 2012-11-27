#!perl -T

use strict;
use warnings;

# Test 201211211427-K7R3
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 14:27 K7R3 211427Z 00000KT 10SM SKC 15/11 A3024 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 14:27 K7R3 211427Z 00000KT 10SM SKC 15/11 A3024 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211211427-K7R3');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211211427-K7R3');
is($rpt->{code}, 'K7R3', 'code 201211211427-K7R3');
is($rpt->{conditions1}, undef, 'conditions1 201211211427-K7R3');
is($rpt->{conditions2}, undef, 'conditions2 201211211427-K7R3');
is($rpt->{conditionstext}, undef, 'conditionstext 201211211427-K7R3');
is($rpt->{day}, '21', 'day 201211211427-K7R3');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211211427-K7R3');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211211427-K7R3');
is($rpt->{error}, undef, 'error 201211211427-K7R3');
is($rpt->{errortext}, undef, 'errortext 201211211427-K7R3');
is($rpt->{eventbe}, undef, 'eventbe 201211211427-K7R3');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211211427-K7R3');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211211427-K7R3');
is($rpt->{http}, undef, 'http 201211211427-K7R3');
is($rpt->{intensity}, undef, 'intensity 201211211427-K7R3');
is($rpt->{maintenance}, undef, 'maintenance 201211211427-K7R3');
is($rpt->{obs}, '2012/11/21 14:27 K7R3 211427Z 00000KT 10SM SKC 15/11 A3024 ', 'obs 201211211427-K7R3');
is($rpt->{precipslr}, undef, 'precipslr 201211211427-K7R3');
is($rpt->{pressure_inhg}, '30.24', 'pressure_inhg 201211211427-K7R3');
is($rpt->{pressure_kgcm}, '1.044235584', 'pressure_kgcm 201211211427-K7R3');
is($rpt->{pressure_lbin}, '14.85249696', 'pressure_lbin 201211211427-K7R3');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211211427-K7R3');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211211427-K7R3');
is($rpt->{ptemperature}, undef, 'ptemperature 201211211427-K7R3');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211211427-K7R3');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211211427-K7R3');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211211427-K7R3');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211211427-K7R3');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211211427-K7R3');
is($rpt->{slp_mb}, undef, 'slp_mb 201211211427-K7R3');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211211427-K7R3');
is($rpt->{station_type}, 'Manual', 'station_type 201211211427-K7R3');
is($rpt->{storm}, undef, 'storm 201211211427-K7R3');
is($rpt->{temperature_c}, '15', 'temperature_c 201211211427-K7R3');
is($rpt->{temperature_f}, '59', 'temperature_f 201211211427-K7R3');
is($rpt->{templateout}, undef, 'templateout 201211211427-K7R3');
is($rpt->{tfile}, undef, 'tfile 201211211427-K7R3');
is($rpt->{thpressure}, undef, 'thpressure 201211211427-K7R3');
is($rpt->{time}, '1427', 'time 201211211427-K7R3');
is($rpt->{visibility_km}, '16', 'visibility_km 201211211427-K7R3');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211211427-K7R3');
is($rpt->{windchill_c}, undef, 'windchill_c 201211211427-K7R3');
is($rpt->{windchill_f}, undef, 'windchill_f 201211211427-K7R3');
is($rpt->{winddir}, '0', 'winddir 201211211427-K7R3');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211211427-K7R3');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211211427-K7R3');
is($rpt->{windgustkts}, '0', 'windgustkts 201211211427-K7R3');
is($rpt->{windgustmph}, '0', 'windgustmph 201211211427-K7R3');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211211427-K7R3');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211211427-K7R3');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211211427-K7R3');
