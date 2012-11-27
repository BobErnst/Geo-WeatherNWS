#!perl -T

use strict;
use warnings;

# Test 201211200155-KLZZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KLZZ 200155Z AUTO 16003KT 10SM CLR 16/11 A3016 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KLZZ 200155Z AUTO 16003KT 10SM CLR 16/11 A3016 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KLZZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KLZZ');
is($rpt->{code}, 'KLZZ', 'code 201211200155-KLZZ');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KLZZ');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KLZZ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KLZZ');
is($rpt->{day}, '20', 'day 201211200155-KLZZ');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211200155-KLZZ');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211200155-KLZZ');
is($rpt->{error}, undef, 'error 201211200155-KLZZ');
is($rpt->{errortext}, undef, 'errortext 201211200155-KLZZ');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KLZZ');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211200155-KLZZ');
is($rpt->{heat_index_f}, '77', 'heat_index_f 201211200155-KLZZ');
is($rpt->{http}, undef, 'http 201211200155-KLZZ');
is($rpt->{intensity}, undef, 'intensity 201211200155-KLZZ');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KLZZ');
is($rpt->{obs}, '2012/11/20 01:55 KLZZ 200155Z AUTO 16003KT 10SM CLR 16/11 A3016 RMK AO2 ', 'obs 201211200155-KLZZ');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KLZZ');
is($rpt->{pressure_inhg}, '30.16', 'pressure_inhg 201211200155-KLZZ');
is($rpt->{pressure_kgcm}, '1.041473056', 'pressure_kgcm 201211200155-KLZZ');
is($rpt->{pressure_lbin}, '14.81320464', 'pressure_lbin 201211200155-KLZZ');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211200155-KLZZ');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211200155-KLZZ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KLZZ');
is($rpt->{relative_humidity}, '72', 'relative_humidity 201211200155-KLZZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200155-KLZZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KLZZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KLZZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KLZZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KLZZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KLZZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KLZZ');
is($rpt->{storm}, undef, 'storm 201211200155-KLZZ');
is($rpt->{temperature_c}, '16', 'temperature_c 201211200155-KLZZ');
is($rpt->{temperature_f}, '61', 'temperature_f 201211200155-KLZZ');
is($rpt->{templateout}, undef, 'templateout 201211200155-KLZZ');
is($rpt->{tfile}, undef, 'tfile 201211200155-KLZZ');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KLZZ');
is($rpt->{time}, '0155', 'time 201211200155-KLZZ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KLZZ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KLZZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KLZZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KLZZ');
is($rpt->{winddir}, '160', 'winddir 201211200155-KLZZ');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211200155-KLZZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KLZZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KLZZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KLZZ');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211200155-KLZZ');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211200155-KLZZ');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211200155-KLZZ');
