#!perl -T

use strict;
use warnings;

# Test 201211232155-KSAR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 KSAR 232155Z AUTO 32010G16KT 10SM CLR 06/M10 A3027 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 KSAR 232155Z AUTO 32010G16KT 10SM CLR 06/M10 A3027 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232155-KSAR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232155-KSAR');
is($rpt->{code}, 'KSAR', 'code 201211232155-KSAR');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-KSAR');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-KSAR');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232155-KSAR');
is($rpt->{day}, '23', 'day 201211232155-KSAR');
is($rpt->{dewpoint_c}, '-10', 'dewpoint_c 201211232155-KSAR');
is($rpt->{dewpoint_f}, '14', 'dewpoint_f 201211232155-KSAR');
is($rpt->{error}, undef, 'error 201211232155-KSAR');
is($rpt->{errortext}, undef, 'errortext 201211232155-KSAR');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-KSAR');
is($rpt->{heat_index_c}, '37', 'heat_index_c 201211232155-KSAR');
is($rpt->{heat_index_f}, '98', 'heat_index_f 201211232155-KSAR');
is($rpt->{http}, undef, 'http 201211232155-KSAR');
is($rpt->{intensity}, undef, 'intensity 201211232155-KSAR');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-KSAR');
is($rpt->{obs}, '2012/11/23 21:55 KSAR 232155Z AUTO 32010G16KT 10SM CLR 06/M10 A3027 RMK AO2 ', 'obs 201211232155-KSAR');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-KSAR');
is($rpt->{pressure_inhg}, '30.27', 'pressure_inhg 201211232155-KSAR');
is($rpt->{pressure_kgcm}, '1.045271532', 'pressure_kgcm 201211232155-KSAR');
is($rpt->{pressure_lbin}, '14.86723158', 'pressure_lbin 201211232155-KSAR');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211232155-KSAR');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211232155-KSAR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211232155-KSAR');
is($rpt->{relative_humidity}, '31', 'relative_humidity 201211232155-KSAR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211232155-KSAR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211232155-KSAR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211232155-KSAR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211232155-KSAR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211232155-KSAR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211232155-KSAR');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-KSAR');
is($rpt->{storm}, undef, 'storm 201211232155-KSAR');
is($rpt->{temperature_c}, '06', 'temperature_c 201211232155-KSAR');
is($rpt->{temperature_f}, '43', 'temperature_f 201211232155-KSAR');
is($rpt->{templateout}, undef, 'templateout 201211232155-KSAR');
is($rpt->{tfile}, undef, 'tfile 201211232155-KSAR');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-KSAR');
is($rpt->{time}, '2155', 'time 201211232155-KSAR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-KSAR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-KSAR');
is($rpt->{windchill_c}, '2', 'windchill_c 201211232155-KSAR');
is($rpt->{windchill_f}, '36', 'windchill_f 201211232155-KSAR');
is($rpt->{winddir}, '320', 'winddir 201211232155-KSAR');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211232155-KSAR');
is($rpt->{windgustkmh}, '30', 'windgustkmh 201211232155-KSAR');
is($rpt->{windgustkts}, '16', 'windgustkts 201211232155-KSAR');
is($rpt->{windgustmph}, '18', 'windgustmph 201211232155-KSAR');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201211232155-KSAR');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201211232155-KSAR');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201211232155-KSAR');
