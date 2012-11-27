#!perl -T

use strict;
use warnings;

# Test 201211230353-KMSY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KMSY 230353Z 17003KT 10SM FEW250 14/11 A3022 RMK AO2 SLP234 T01390111 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KMSY 230353Z 17003KT 10SM FEW250 14/11 A3022 RMK AO2 SLP234 T01390111 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211230353-KMSY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW250'], 'cloudlevel_arrayref 201211230353-KMSY');
is($rpt->{code}, 'KMSY', 'code 201211230353-KMSY');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KMSY');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KMSY');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211230353-KMSY');
is($rpt->{day}, '23', 'day 201211230353-KMSY');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211230353-KMSY');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211230353-KMSY');
is($rpt->{error}, undef, 'error 201211230353-KMSY');
is($rpt->{errortext}, undef, 'errortext 201211230353-KMSY');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KMSY');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211230353-KMSY');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211230353-KMSY');
is($rpt->{http}, undef, 'http 201211230353-KMSY');
is($rpt->{intensity}, undef, 'intensity 201211230353-KMSY');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KMSY');
is($rpt->{obs}, '2012/11/23 03:53 KMSY 230353Z 17003KT 10SM FEW250 14/11 A3022 RMK AO2 SLP234 T01390111 ', 'obs 201211230353-KMSY');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KMSY');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211230353-KMSY');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211230353-KMSY');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211230353-KMSY');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211230353-KMSY');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230353-KMSY');
is($rpt->{ptemperature}, 'T01390111', 'ptemperature 201211230353-KMSY');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211230353-KMSY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.4','T01390111'], 'remark_arrayref 201211230353-KMSY');
is($rpt->{slp_inhg}, '30.22', 'slp_inhg 201211230353-KMSY');
is($rpt->{slp_kgcm}, '1.043581448', 'slp_kgcm 201211230353-KMSY');
is($rpt->{slp_lbin}, '14.84318892', 'slp_lbin 201211230353-KMSY');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211230353-KMSY');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211230353-KMSY');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KMSY');
is($rpt->{storm}, undef, 'storm 201211230353-KMSY');
is($rpt->{temperature_c}, '14', 'temperature_c 201211230353-KMSY');
is($rpt->{temperature_f}, '57', 'temperature_f 201211230353-KMSY');
is($rpt->{templateout}, undef, 'templateout 201211230353-KMSY');
is($rpt->{tfile}, undef, 'tfile 201211230353-KMSY');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KMSY');
is($rpt->{time}, '0353', 'time 201211230353-KMSY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KMSY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KMSY');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230353-KMSY');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230353-KMSY');
is($rpt->{winddir}, '170', 'winddir 201211230353-KMSY');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211230353-KMSY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KMSY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KMSY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KMSY');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211230353-KMSY');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211230353-KMSY');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211230353-KMSY');
