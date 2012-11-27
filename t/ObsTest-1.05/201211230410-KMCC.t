#!perl -T

use strict;
use warnings;

# Test 201211230410-KMCC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:10 KMCC 230410Z AUTO 11003KT 10SM CLR 10/07 A3023 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:10 KMCC 230410Z AUTO 11003KT 10SM CLR 10/07 A3023 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230410-KMCC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230410-KMCC');
is($rpt->{code}, 'KMCC', 'code 201211230410-KMCC');
is($rpt->{conditions1}, undef, 'conditions1 201211230410-KMCC');
is($rpt->{conditions2}, undef, 'conditions2 201211230410-KMCC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230410-KMCC');
is($rpt->{day}, '23', 'day 201211230410-KMCC');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211230410-KMCC');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211230410-KMCC');
is($rpt->{error}, undef, 'error 201211230410-KMCC');
is($rpt->{errortext}, undef, 'errortext 201211230410-KMCC');
is($rpt->{eventbe}, undef, 'eventbe 201211230410-KMCC');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211230410-KMCC');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211230410-KMCC');
is($rpt->{http}, undef, 'http 201211230410-KMCC');
is($rpt->{intensity}, undef, 'intensity 201211230410-KMCC');
is($rpt->{maintenance}, undef, 'maintenance 201211230410-KMCC');
is($rpt->{obs}, '2012/11/23 04:10 KMCC 230410Z AUTO 11003KT 10SM CLR 10/07 A3023 RMK AO2 ', 'obs 201211230410-KMCC');
is($rpt->{precipslr}, undef, 'precipslr 201211230410-KMCC');
is($rpt->{pressure_inhg}, '30.23', 'pressure_inhg 201211230410-KMCC');
is($rpt->{pressure_kgcm}, '1.043890268', 'pressure_kgcm 201211230410-KMCC');
is($rpt->{pressure_lbin}, '14.84758542', 'pressure_lbin 201211230410-KMCC');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211230410-KMCC');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230410-KMCC');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230410-KMCC');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211230410-KMCC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211230410-KMCC');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230410-KMCC');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230410-KMCC');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230410-KMCC');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230410-KMCC');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230410-KMCC');
is($rpt->{station_type}, 'Automated', 'station_type 201211230410-KMCC');
is($rpt->{storm}, undef, 'storm 201211230410-KMCC');
is($rpt->{temperature_c}, '10', 'temperature_c 201211230410-KMCC');
is($rpt->{temperature_f}, '50', 'temperature_f 201211230410-KMCC');
is($rpt->{templateout}, undef, 'templateout 201211230410-KMCC');
is($rpt->{tfile}, undef, 'tfile 201211230410-KMCC');
is($rpt->{thpressure}, undef, 'thpressure 201211230410-KMCC');
is($rpt->{time}, '0410', 'time 201211230410-KMCC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230410-KMCC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230410-KMCC');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230410-KMCC');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230410-KMCC');
is($rpt->{winddir}, '110', 'winddir 201211230410-KMCC');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211230410-KMCC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230410-KMCC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230410-KMCC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230410-KMCC');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211230410-KMCC');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211230410-KMCC');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211230410-KMCC');
