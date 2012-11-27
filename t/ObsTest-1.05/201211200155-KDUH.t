#!perl -T

use strict;
use warnings;

# Test 201211200155-KDUH
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KDUH 200155Z AUTO 00000KT 10SM CLR 04/01 A3023 RMK AO2 T00400007 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KDUH 200155Z AUTO 00000KT 10SM CLR 04/01 A3023 RMK AO2 T00400007 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KDUH');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KDUH');
is($rpt->{code}, 'KDUH', 'code 201211200155-KDUH');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KDUH');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KDUH');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KDUH');
is($rpt->{day}, '20', 'day 201211200155-KDUH');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211200155-KDUH');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211200155-KDUH');
is($rpt->{error}, undef, 'error 201211200155-KDUH');
is($rpt->{errortext}, undef, 'errortext 201211200155-KDUH');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KDUH');
is($rpt->{heat_index_c}, '53', 'heat_index_c 201211200155-KDUH');
is($rpt->{heat_index_f}, '128', 'heat_index_f 201211200155-KDUH');
is($rpt->{http}, undef, 'http 201211200155-KDUH');
is($rpt->{intensity}, undef, 'intensity 201211200155-KDUH');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KDUH');
is($rpt->{obs}, '2012/11/20 01:55 KDUH 200155Z AUTO 00000KT 10SM CLR 04/01 A3023 RMK AO2 T00400007 ', 'obs 201211200155-KDUH');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KDUH');
is($rpt->{pressure_inhg}, '30.23', 'pressure_inhg 201211200155-KDUH');
is($rpt->{pressure_kgcm}, '1.043890268', 'pressure_kgcm 201211200155-KDUH');
is($rpt->{pressure_lbin}, '14.84758542', 'pressure_lbin 201211200155-KDUH');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211200155-KDUH');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211200155-KDUH');
is($rpt->{ptemperature}, 'T00400007', 'ptemperature 201211200155-KDUH');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211200155-KDUH');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00400007'], 'remark_arrayref 201211200155-KDUH');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KDUH');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KDUH');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KDUH');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KDUH');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KDUH');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KDUH');
is($rpt->{storm}, undef, 'storm 201211200155-KDUH');
is($rpt->{temperature_c}, '04', 'temperature_c 201211200155-KDUH');
is($rpt->{temperature_f}, '39', 'temperature_f 201211200155-KDUH');
is($rpt->{templateout}, undef, 'templateout 201211200155-KDUH');
is($rpt->{tfile}, undef, 'tfile 201211200155-KDUH');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KDUH');
is($rpt->{time}, '0155', 'time 201211200155-KDUH');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KDUH');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KDUH');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KDUH');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KDUH');
is($rpt->{winddir}, '0', 'winddir 201211200155-KDUH');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211200155-KDUH');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KDUH');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KDUH');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KDUH');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211200155-KDUH');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211200155-KDUH');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211200155-KDUH');
