#!perl -T

use strict;
use warnings;

# Test 201211200153-KSPG
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KSPG 200153Z AUTO 05011KT 10SM OVC024 16/13 A3012 RMK AO2 SLP198 T01610133 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KSPG 200153Z AUTO 05011KT 10SM OVC024 16/13 A3012 RMK AO2 SLP198 T01610133 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200153-KSPG');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC024'], 'cloudlevel_arrayref 201211200153-KSPG');
is($rpt->{code}, 'KSPG', 'code 201211200153-KSPG');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KSPG');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KSPG');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200153-KSPG');
is($rpt->{day}, '20', 'day 201211200153-KSPG');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211200153-KSPG');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211200153-KSPG');
is($rpt->{error}, undef, 'error 201211200153-KSPG');
is($rpt->{errortext}, undef, 'errortext 201211200153-KSPG');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KSPG');
is($rpt->{heat_index_c}, '22', 'heat_index_c 201211200153-KSPG');
is($rpt->{heat_index_f}, '71', 'heat_index_f 201211200153-KSPG');
is($rpt->{http}, undef, 'http 201211200153-KSPG');
is($rpt->{intensity}, undef, 'intensity 201211200153-KSPG');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KSPG');
is($rpt->{obs}, '2012/11/20 01:53 KSPG 200153Z AUTO 05011KT 10SM OVC024 16/13 A3012 RMK AO2 SLP198 T01610133 ', 'obs 201211200153-KSPG');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KSPG');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211200153-KSPG');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211200153-KSPG');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211200153-KSPG');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211200153-KSPG');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211200153-KSPG');
is($rpt->{ptemperature}, 'T01610133', 'ptemperature 201211200153-KSPG');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211200153-KSPG');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.8','T01610133'], 'remark_arrayref 201211200153-KSPG');
is($rpt->{slp_inhg}, '30.11', 'slp_inhg 201211200153-KSPG');
is($rpt->{slp_kgcm}, '1.039910456', 'slp_kgcm 201211200153-KSPG');
is($rpt->{slp_lbin}, '14.79097524', 'slp_lbin 201211200153-KSPG');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211200153-KSPG');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211200153-KSPG');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KSPG');
is($rpt->{storm}, undef, 'storm 201211200153-KSPG');
is($rpt->{temperature_c}, '16', 'temperature_c 201211200153-KSPG');
is($rpt->{temperature_f}, '61', 'temperature_f 201211200153-KSPG');
is($rpt->{templateout}, undef, 'templateout 201211200153-KSPG');
is($rpt->{tfile}, undef, 'tfile 201211200153-KSPG');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KSPG');
is($rpt->{time}, '0153', 'time 201211200153-KSPG');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KSPG');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KSPG');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200153-KSPG');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200153-KSPG');
is($rpt->{winddir}, '50', 'winddir 201211200153-KSPG');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211200153-KSPG');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KSPG');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KSPG');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KSPG');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211200153-KSPG');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211200153-KSPG');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211200153-KSPG');
