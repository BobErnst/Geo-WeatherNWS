#!perl -T

use strict;
use warnings;

# Test 201211200156-KDUJ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:56 KDUJ 200156Z AUTO 10003KT 10SM CLR 01/M02 A3023 RMK AO2 SLP253 T00061017 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:56 KDUJ 200156Z AUTO 10003KT 10SM CLR 01/M02 A3023 RMK AO2 SLP253 T00061017 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200156-KDUJ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200156-KDUJ');
is($rpt->{code}, 'KDUJ', 'code 201211200156-KDUJ');
is($rpt->{conditions1}, undef, 'conditions1 201211200156-KDUJ');
is($rpt->{conditions2}, undef, 'conditions2 201211200156-KDUJ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200156-KDUJ');
is($rpt->{day}, '20', 'day 201211200156-KDUJ');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211200156-KDUJ');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211200156-KDUJ');
is($rpt->{error}, undef, 'error 201211200156-KDUJ');
is($rpt->{errortext}, undef, 'errortext 201211200156-KDUJ');
is($rpt->{eventbe}, undef, 'eventbe 201211200156-KDUJ');
is($rpt->{heat_index_c}, '68', 'heat_index_c 201211200156-KDUJ');
is($rpt->{heat_index_f}, '154', 'heat_index_f 201211200156-KDUJ');
is($rpt->{http}, undef, 'http 201211200156-KDUJ');
is($rpt->{intensity}, undef, 'intensity 201211200156-KDUJ');
is($rpt->{maintenance}, undef, 'maintenance 201211200156-KDUJ');
is($rpt->{obs}, '2012/11/20 01:56 KDUJ 200156Z AUTO 10003KT 10SM CLR 01/M02 A3023 RMK AO2 SLP253 T00061017 ', 'obs 201211200156-KDUJ');
is($rpt->{precipslr}, undef, 'precipslr 201211200156-KDUJ');
is($rpt->{pressure_inhg}, '30.23', 'pressure_inhg 201211200156-KDUJ');
is($rpt->{pressure_kgcm}, '1.043890268', 'pressure_kgcm 201211200156-KDUJ');
is($rpt->{pressure_lbin}, '14.84758542', 'pressure_lbin 201211200156-KDUJ');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211200156-KDUJ');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211200156-KDUJ');
is($rpt->{ptemperature}, 'T00061017', 'ptemperature 201211200156-KDUJ');
is($rpt->{relative_humidity}, '80', 'relative_humidity 201211200156-KDUJ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1025.3','T00061017'], 'remark_arrayref 201211200156-KDUJ');
is($rpt->{slp_inhg}, '30.27', 'slp_inhg 201211200156-KDUJ');
is($rpt->{slp_kgcm}, '1.045518916', 'slp_kgcm 201211200156-KDUJ');
is($rpt->{slp_lbin}, '14.87074614', 'slp_lbin 201211200156-KDUJ');
is($rpt->{slp_mb}, '1025', 'slp_mb 201211200156-KDUJ');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211200156-KDUJ');
is($rpt->{station_type}, 'Automated', 'station_type 201211200156-KDUJ');
is($rpt->{storm}, undef, 'storm 201211200156-KDUJ');
is($rpt->{temperature_c}, '01', 'temperature_c 201211200156-KDUJ');
is($rpt->{temperature_f}, '34', 'temperature_f 201211200156-KDUJ');
is($rpt->{templateout}, undef, 'templateout 201211200156-KDUJ');
is($rpt->{tfile}, undef, 'tfile 201211200156-KDUJ');
is($rpt->{thpressure}, undef, 'thpressure 201211200156-KDUJ');
is($rpt->{time}, '0156', 'time 201211200156-KDUJ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200156-KDUJ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200156-KDUJ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200156-KDUJ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200156-KDUJ');
is($rpt->{winddir}, '100', 'winddir 201211200156-KDUJ');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211200156-KDUJ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200156-KDUJ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200156-KDUJ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200156-KDUJ');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211200156-KDUJ');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211200156-KDUJ');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211200156-KDUJ');
