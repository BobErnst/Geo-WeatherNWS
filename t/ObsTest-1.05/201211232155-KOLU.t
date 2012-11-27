#!perl -T

use strict;
use warnings;

# Test 201211232155-KOLU
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 KOLU 232155Z AUTO 32012G16KT 10SM CLR 01/M14 A3046 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 KOLU 232155Z AUTO 32012G16KT 10SM CLR 01/M14 A3046 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232155-KOLU');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232155-KOLU');
is($rpt->{code}, 'KOLU', 'code 201211232155-KOLU');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-KOLU');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-KOLU');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232155-KOLU');
is($rpt->{day}, '23', 'day 201211232155-KOLU');
is($rpt->{dewpoint_c}, '-14', 'dewpoint_c 201211232155-KOLU');
is($rpt->{dewpoint_f}, '7', 'dewpoint_f 201211232155-KOLU');
is($rpt->{error}, undef, 'error 201211232155-KOLU');
is($rpt->{errortext}, undef, 'errortext 201211232155-KOLU');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-KOLU');
is($rpt->{heat_index_c}, '47', 'heat_index_c 201211232155-KOLU');
is($rpt->{heat_index_f}, '117', 'heat_index_f 201211232155-KOLU');
is($rpt->{http}, undef, 'http 201211232155-KOLU');
is($rpt->{intensity}, undef, 'intensity 201211232155-KOLU');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-KOLU');
is($rpt->{obs}, '2012/11/23 21:55 KOLU 232155Z AUTO 32012G16KT 10SM CLR 01/M14 A3046 RMK AO1 ', 'obs 201211232155-KOLU');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-KOLU');
is($rpt->{pressure_inhg}, '30.46', 'pressure_inhg 201211232155-KOLU');
is($rpt->{pressure_kgcm}, '1.051832536', 'pressure_kgcm 201211232155-KOLU');
is($rpt->{pressure_lbin}, '14.96055084', 'pressure_lbin 201211232155-KOLU');
is($rpt->{pressure_mb}, '1031', 'pressure_mb 201211232155-KOLU');
is($rpt->{pressure_mmhg}, '774', 'pressure_mmhg 201211232155-KOLU');
is($rpt->{ptemperature}, undef, 'ptemperature 201211232155-KOLU');
is($rpt->{relative_humidity}, '32', 'relative_humidity 201211232155-KOLU');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211232155-KOLU');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211232155-KOLU');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211232155-KOLU');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211232155-KOLU');
is($rpt->{slp_mb}, undef, 'slp_mb 201211232155-KOLU');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211232155-KOLU');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-KOLU');
is($rpt->{storm}, undef, 'storm 201211232155-KOLU');
is($rpt->{temperature_c}, '01', 'temperature_c 201211232155-KOLU');
is($rpt->{temperature_f}, '34', 'temperature_f 201211232155-KOLU');
is($rpt->{templateout}, undef, 'templateout 201211232155-KOLU');
is($rpt->{tfile}, undef, 'tfile 201211232155-KOLU');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-KOLU');
is($rpt->{time}, '2155', 'time 201211232155-KOLU');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-KOLU');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-KOLU');
is($rpt->{windchill_c}, '-4', 'windchill_c 201211232155-KOLU');
is($rpt->{windchill_f}, '24', 'windchill_f 201211232155-KOLU');
is($rpt->{winddir}, '320', 'winddir 201211232155-KOLU');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211232155-KOLU');
is($rpt->{windgustkmh}, '30', 'windgustkmh 201211232155-KOLU');
is($rpt->{windgustkts}, '16', 'windgustkts 201211232155-KOLU');
is($rpt->{windgustmph}, '18', 'windgustmph 201211232155-KOLU');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211232155-KOLU');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211232155-KOLU');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211232155-KOLU');
