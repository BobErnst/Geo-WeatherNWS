#!perl -T

use strict;
use warnings;

# Test 201211232155-KPTB
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 KPTB 232155Z AUTO 21005KT 10SM CLR 17/01 A2983 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 KPTB 232155Z AUTO 21005KT 10SM CLR 17/01 A2983 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232155-KPTB');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232155-KPTB');
is($rpt->{code}, 'KPTB', 'code 201211232155-KPTB');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-KPTB');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-KPTB');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232155-KPTB');
is($rpt->{day}, '23', 'day 201211232155-KPTB');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211232155-KPTB');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211232155-KPTB');
is($rpt->{error}, undef, 'error 201211232155-KPTB');
is($rpt->{errortext}, undef, 'errortext 201211232155-KPTB');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-KPTB');
is($rpt->{heat_index_c}, '26', 'heat_index_c 201211232155-KPTB');
is($rpt->{heat_index_f}, '79', 'heat_index_f 201211232155-KPTB');
is($rpt->{http}, undef, 'http 201211232155-KPTB');
is($rpt->{intensity}, undef, 'intensity 201211232155-KPTB');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-KPTB');
is($rpt->{obs}, '2012/11/23 21:55 KPTB 232155Z AUTO 21005KT 10SM CLR 17/01 A2983 RMK AO2 ', 'obs 201211232155-KPTB');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-KPTB');
is($rpt->{pressure_inhg}, '29.83', 'pressure_inhg 201211232155-KPTB');
is($rpt->{pressure_kgcm}, '1.030077628', 'pressure_kgcm 201211232155-KPTB');
is($rpt->{pressure_lbin}, '14.65112382', 'pressure_lbin 201211232155-KPTB');
is($rpt->{pressure_mb}, '1010', 'pressure_mb 201211232155-KPTB');
is($rpt->{pressure_mmhg}, '758', 'pressure_mmhg 201211232155-KPTB');
is($rpt->{ptemperature}, undef, 'ptemperature 201211232155-KPTB');
is($rpt->{relative_humidity}, '34', 'relative_humidity 201211232155-KPTB');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211232155-KPTB');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211232155-KPTB');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211232155-KPTB');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211232155-KPTB');
is($rpt->{slp_mb}, undef, 'slp_mb 201211232155-KPTB');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211232155-KPTB');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-KPTB');
is($rpt->{storm}, undef, 'storm 201211232155-KPTB');
is($rpt->{temperature_c}, '17', 'temperature_c 201211232155-KPTB');
is($rpt->{temperature_f}, '63', 'temperature_f 201211232155-KPTB');
is($rpt->{templateout}, undef, 'templateout 201211232155-KPTB');
is($rpt->{tfile}, undef, 'tfile 201211232155-KPTB');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-KPTB');
is($rpt->{time}, '2155', 'time 201211232155-KPTB');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-KPTB');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-KPTB');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232155-KPTB');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232155-KPTB');
is($rpt->{winddir}, '210', 'winddir 201211232155-KPTB');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211232155-KPTB');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211232155-KPTB');
is($rpt->{windgustkts}, '0', 'windgustkts 201211232155-KPTB');
is($rpt->{windgustmph}, '0', 'windgustmph 201211232155-KPTB');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211232155-KPTB');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211232155-KPTB');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211232155-KPTB');
