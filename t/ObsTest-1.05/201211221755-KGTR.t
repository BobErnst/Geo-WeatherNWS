#!perl -T

use strict;
use warnings;

# Test 201211221755-KGTR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 17:55 KGTR 221755Z 20006KT 10SM SKC 21/08 A3021 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 17:55 KGTR 221755Z 20006KT 10SM SKC 21/08 A3021 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211221755-KGTR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211221755-KGTR');
is($rpt->{code}, 'KGTR', 'code 201211221755-KGTR');
is($rpt->{conditions1}, undef, 'conditions1 201211221755-KGTR');
is($rpt->{conditions2}, undef, 'conditions2 201211221755-KGTR');
is($rpt->{conditionstext}, undef, 'conditionstext 201211221755-KGTR');
is($rpt->{day}, '22', 'day 201211221755-KGTR');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211221755-KGTR');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211221755-KGTR');
is($rpt->{error}, undef, 'error 201211221755-KGTR');
is($rpt->{errortext}, undef, 'errortext 201211221755-KGTR');
is($rpt->{eventbe}, undef, 'eventbe 201211221755-KGTR');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211221755-KGTR');
is($rpt->{heat_index_f}, '77', 'heat_index_f 201211221755-KGTR');
is($rpt->{http}, undef, 'http 201211221755-KGTR');
is($rpt->{intensity}, undef, 'intensity 201211221755-KGTR');
is($rpt->{maintenance}, undef, 'maintenance 201211221755-KGTR');
is($rpt->{obs}, '2012/11/22 17:55 KGTR 221755Z 20006KT 10SM SKC 21/08 A3021 ', 'obs 201211221755-KGTR');
is($rpt->{precipslr}, undef, 'precipslr 201211221755-KGTR');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211221755-KGTR');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211221755-KGTR');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211221755-KGTR');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211221755-KGTR');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211221755-KGTR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211221755-KGTR');
is($rpt->{relative_humidity}, '43', 'relative_humidity 201211221755-KGTR');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211221755-KGTR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211221755-KGTR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211221755-KGTR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211221755-KGTR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211221755-KGTR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211221755-KGTR');
is($rpt->{station_type}, 'Manual', 'station_type 201211221755-KGTR');
is($rpt->{storm}, undef, 'storm 201211221755-KGTR');
is($rpt->{temperature_c}, '21', 'temperature_c 201211221755-KGTR');
is($rpt->{temperature_f}, '70', 'temperature_f 201211221755-KGTR');
is($rpt->{templateout}, undef, 'templateout 201211221755-KGTR');
is($rpt->{tfile}, undef, 'tfile 201211221755-KGTR');
is($rpt->{thpressure}, undef, 'thpressure 201211221755-KGTR');
is($rpt->{time}, '1755', 'time 201211221755-KGTR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211221755-KGTR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211221755-KGTR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211221755-KGTR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211221755-KGTR');
is($rpt->{winddir}, '200', 'winddir 201211221755-KGTR');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211221755-KGTR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211221755-KGTR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211221755-KGTR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211221755-KGTR');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211221755-KGTR');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211221755-KGTR');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211221755-KGTR');
