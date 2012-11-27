#!perl -T

use strict;
use warnings;

# Test 201209301258-K4CR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/09/30 12:58 K4CR 301258Z 28010KT 15SM SKC 11/10 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/09/30 12:58 K4CR 301258Z 28010KT 15SM SKC 11/10 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201209301258-K4CR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201209301258-K4CR');
is($rpt->{code}, 'K4CR', 'code 201209301258-K4CR');
is($rpt->{conditions1}, undef, 'conditions1 201209301258-K4CR');
is($rpt->{conditions2}, undef, 'conditions2 201209301258-K4CR');
is($rpt->{conditionstext}, undef, 'conditionstext 201209301258-K4CR');
is($rpt->{day}, '30', 'day 201209301258-K4CR');
is($rpt->{dewpoint_c}, '10', 'dewpoint_c 201209301258-K4CR');
is($rpt->{dewpoint_f}, '50', 'dewpoint_f 201209301258-K4CR');
is($rpt->{error}, undef, 'error 201209301258-K4CR');
is($rpt->{errortext}, undef, 'errortext 201209301258-K4CR');
is($rpt->{eventbe}, undef, 'eventbe 201209301258-K4CR');
is($rpt->{heat_index_c}, '23', 'heat_index_c 201209301258-K4CR');
is($rpt->{heat_index_f}, '73', 'heat_index_f 201209301258-K4CR');
is($rpt->{http}, undef, 'http 201209301258-K4CR');
is($rpt->{intensity}, undef, 'intensity 201209301258-K4CR');
is($rpt->{maintenance}, undef, 'maintenance 201209301258-K4CR');
is($rpt->{obs}, '2012/09/30 12:58 K4CR 301258Z 28010KT 15SM SKC 11/10 ', 'obs 201209301258-K4CR');
is($rpt->{precipslr}, undef, 'precipslr 201209301258-K4CR');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 201209301258-K4CR');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 201209301258-K4CR');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 201209301258-K4CR');
is($rpt->{pressure_mb}, undef, 'pressure_mb 201209301258-K4CR');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 201209301258-K4CR');
is($rpt->{ptemperature}, undef, 'ptemperature 201209301258-K4CR');
is($rpt->{relative_humidity}, '94', 'relative_humidity 201209301258-K4CR');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201209301258-K4CR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201209301258-K4CR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201209301258-K4CR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201209301258-K4CR');
is($rpt->{slp_mb}, undef, 'slp_mb 201209301258-K4CR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201209301258-K4CR');
is($rpt->{station_type}, 'Manual', 'station_type 201209301258-K4CR');
is($rpt->{storm}, undef, 'storm 201209301258-K4CR');
is($rpt->{temperature_c}, '11', 'temperature_c 201209301258-K4CR');
is($rpt->{temperature_f}, '52', 'temperature_f 201209301258-K4CR');
is($rpt->{templateout}, undef, 'templateout 201209301258-K4CR');
is($rpt->{tfile}, undef, 'tfile 201209301258-K4CR');
is($rpt->{thpressure}, undef, 'thpressure 201209301258-K4CR');
is($rpt->{time}, '1258', 'time 201209301258-K4CR');
is($rpt->{visibility_km}, '24', 'visibility_km 201209301258-K4CR');
is($rpt->{visibility_mi}, '15', 'visibility_mi 201209301258-K4CR');
is($rpt->{windchill_c}, undef, 'windchill_c 201209301258-K4CR');
is($rpt->{windchill_f}, undef, 'windchill_f 201209301258-K4CR');
is($rpt->{winddir}, '280', 'winddir 201209301258-K4CR');
is($rpt->{winddirtext}, 'West', 'winddirtext 201209301258-K4CR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201209301258-K4CR');
is($rpt->{windgustkts}, '0', 'windgustkts 201209301258-K4CR');
is($rpt->{windgustmph}, '0', 'windgustmph 201209301258-K4CR');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201209301258-K4CR');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201209301258-K4CR');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201209301258-K4CR');
