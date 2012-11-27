#!perl -T

use strict;
use warnings;

# Test 201211232153-KFMY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:53 KFMY 232153Z 33007KT 10SM CLR 22/M01 A3010 RMK AO2 SLP196 T02221011 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:53 KFMY 232153Z 33007KT 10SM CLR 22/M01 A3010 RMK AO2 SLP196 T02221011 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232153-KFMY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232153-KFMY');
is($rpt->{code}, 'KFMY', 'code 201211232153-KFMY');
is($rpt->{conditions1}, undef, 'conditions1 201211232153-KFMY');
is($rpt->{conditions2}, undef, 'conditions2 201211232153-KFMY');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232153-KFMY');
is($rpt->{day}, '23', 'day 201211232153-KFMY');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211232153-KFMY');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211232153-KFMY');
is($rpt->{error}, undef, 'error 201211232153-KFMY');
is($rpt->{errortext}, undef, 'errortext 201211232153-KFMY');
is($rpt->{eventbe}, undef, 'eventbe 201211232153-KFMY');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211232153-KFMY');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211232153-KFMY');
is($rpt->{http}, undef, 'http 201211232153-KFMY');
is($rpt->{intensity}, undef, 'intensity 201211232153-KFMY');
is($rpt->{maintenance}, undef, 'maintenance 201211232153-KFMY');
is($rpt->{obs}, '2012/11/23 21:53 KFMY 232153Z 33007KT 10SM CLR 22/M01 A3010 RMK AO2 SLP196 T02221011 ', 'obs 201211232153-KFMY');
is($rpt->{precipslr}, undef, 'precipslr 201211232153-KFMY');
is($rpt->{pressure_inhg}, '30.10', 'pressure_inhg 201211232153-KFMY');
is($rpt->{pressure_kgcm}, '1.03940116', 'pressure_kgcm 201211232153-KFMY');
is($rpt->{pressure_lbin}, '14.7837354', 'pressure_lbin 201211232153-KFMY');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211232153-KFMY');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211232153-KFMY');
is($rpt->{ptemperature}, 'T02221011', 'ptemperature 201211232153-KFMY');
is($rpt->{relative_humidity}, '22', 'relative_humidity 201211232153-KFMY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.6','T02221011'], 'remark_arrayref 201211232153-KFMY');
is($rpt->{slp_inhg}, '30.10', 'slp_inhg 201211232153-KFMY');
is($rpt->{slp_kgcm}, '1.039706512', 'slp_kgcm 201211232153-KFMY');
is($rpt->{slp_lbin}, '14.78807448', 'slp_lbin 201211232153-KFMY');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211232153-KFMY');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211232153-KFMY');
is($rpt->{station_type}, 'Automated', 'station_type 201211232153-KFMY');
is($rpt->{storm}, undef, 'storm 201211232153-KFMY');
is($rpt->{temperature_c}, '22', 'temperature_c 201211232153-KFMY');
is($rpt->{temperature_f}, '72', 'temperature_f 201211232153-KFMY');
is($rpt->{templateout}, undef, 'templateout 201211232153-KFMY');
is($rpt->{tfile}, undef, 'tfile 201211232153-KFMY');
is($rpt->{thpressure}, undef, 'thpressure 201211232153-KFMY');
is($rpt->{time}, '2153', 'time 201211232153-KFMY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232153-KFMY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232153-KFMY');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232153-KFMY');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232153-KFMY');
is($rpt->{winddir}, '330', 'winddir 201211232153-KFMY');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211232153-KFMY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211232153-KFMY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211232153-KFMY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211232153-KFMY');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211232153-KFMY');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211232153-KFMY');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211232153-KFMY');
