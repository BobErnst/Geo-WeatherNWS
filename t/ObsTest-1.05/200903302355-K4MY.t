#!perl -T

use strict;
use warnings;

# Test 200903302355-K4MY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2009/03/30 23:55 K4MY 302355Z 30010G23KT 220V010 25SM FEW 150 04/02 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2009/03/30 23:55 K4MY 302355Z 30010G23KT 220V010 25SM FEW 150 04/02 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 200903302355-K4MY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW'], 'cloudlevel_arrayref 200903302355-K4MY');
is($rpt->{code}, 'K4MY', 'code 200903302355-K4MY');
is($rpt->{conditions1}, undef, 'conditions1 200903302355-K4MY');
is($rpt->{conditions2}, undef, 'conditions2 200903302355-K4MY');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 200903302355-K4MY');
is($rpt->{day}, '30', 'day 200903302355-K4MY');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 200903302355-K4MY');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 200903302355-K4MY');
is($rpt->{error}, undef, 'error 200903302355-K4MY');
is($rpt->{errortext}, undef, 'errortext 200903302355-K4MY');
is($rpt->{eventbe}, undef, 'eventbe 200903302355-K4MY');
is($rpt->{heat_index_c}, '50', 'heat_index_c 200903302355-K4MY');
is($rpt->{heat_index_f}, '123', 'heat_index_f 200903302355-K4MY');
is($rpt->{http}, undef, 'http 200903302355-K4MY');
is($rpt->{intensity}, undef, 'intensity 200903302355-K4MY');
is($rpt->{maintenance}, undef, 'maintenance 200903302355-K4MY');
is($rpt->{obs}, '2009/03/30 23:55 K4MY 302355Z 30010G23KT 220V010 25SM FEW 150 04/02 ', 'obs 200903302355-K4MY');
is($rpt->{precipslr}, undef, 'precipslr 200903302355-K4MY');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 200903302355-K4MY');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 200903302355-K4MY');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 200903302355-K4MY');
is($rpt->{pressure_mb}, undef, 'pressure_mb 200903302355-K4MY');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 200903302355-K4MY');
is($rpt->{ptemperature}, undef, 'ptemperature 200903302355-K4MY');
is($rpt->{relative_humidity}, '87', 'relative_humidity 200903302355-K4MY');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 200903302355-K4MY');
is($rpt->{slp_inhg}, undef, 'slp_inhg 200903302355-K4MY');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 200903302355-K4MY');
is($rpt->{slp_lbin}, undef, 'slp_lbin 200903302355-K4MY');
is($rpt->{slp_mb}, undef, 'slp_mb 200903302355-K4MY');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 200903302355-K4MY');
is($rpt->{station_type}, 'Manual', 'station_type 200903302355-K4MY');
is($rpt->{storm}, undef, 'storm 200903302355-K4MY');
is($rpt->{temperature_c}, '04', 'temperature_c 200903302355-K4MY');
is($rpt->{temperature_f}, '39', 'temperature_f 200903302355-K4MY');
is($rpt->{templateout}, undef, 'templateout 200903302355-K4MY');
is($rpt->{tfile}, undef, 'tfile 200903302355-K4MY');
is($rpt->{thpressure}, undef, 'thpressure 200903302355-K4MY');
is($rpt->{time}, '2355', 'time 200903302355-K4MY');
is($rpt->{visibility_km}, '40', 'visibility_km 200903302355-K4MY');
is($rpt->{visibility_mi}, '25', 'visibility_mi 200903302355-K4MY');
is($rpt->{windchill_c}, '-0', 'windchill_c 200903302355-K4MY');
is($rpt->{windchill_f}, '32', 'windchill_f 200903302355-K4MY');
is($rpt->{winddir}, '300', 'winddir 200903302355-K4MY');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 200903302355-K4MY');
is($rpt->{windgustkmh}, '43', 'windgustkmh 200903302355-K4MY');
is($rpt->{windgustkts}, '23', 'windgustkts 200903302355-K4MY');
is($rpt->{windgustmph}, '26', 'windgustmph 200903302355-K4MY');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 200903302355-K4MY');
is($rpt->{windspeedkts}, '10', 'windspeedkts 200903302355-K4MY');
is($rpt->{windspeedmph}, '12', 'windspeedmph 200903302355-K4MY');
