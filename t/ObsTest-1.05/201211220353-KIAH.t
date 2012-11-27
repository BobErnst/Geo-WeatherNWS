#!perl -T

use strict;
use warnings;

# Test 201211220353-KIAH
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:53 KIAH 220353Z 00000KT 10SM SCT250 14/11 A3020 RMK AO2 SLP225 T01390111 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:53 KIAH 220353Z 00000KT 10SM SCT250 14/11 A3020 RMK AO2 SLP225 T01390111 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211220353-KIAH');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT250'], 'cloudlevel_arrayref 201211220353-KIAH');
is($rpt->{code}, 'KIAH', 'code 201211220353-KIAH');
is($rpt->{conditions1}, undef, 'conditions1 201211220353-KIAH');
is($rpt->{conditions2}, undef, 'conditions2 201211220353-KIAH');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211220353-KIAH');
is($rpt->{day}, '22', 'day 201211220353-KIAH');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211220353-KIAH');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211220353-KIAH');
is($rpt->{error}, undef, 'error 201211220353-KIAH');
is($rpt->{errortext}, undef, 'errortext 201211220353-KIAH');
is($rpt->{eventbe}, undef, 'eventbe 201211220353-KIAH');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211220353-KIAH');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211220353-KIAH');
is($rpt->{http}, undef, 'http 201211220353-KIAH');
is($rpt->{intensity}, undef, 'intensity 201211220353-KIAH');
is($rpt->{maintenance}, undef, 'maintenance 201211220353-KIAH');
is($rpt->{obs}, '2012/11/22 03:53 KIAH 220353Z 00000KT 10SM SCT250 14/11 A3020 RMK AO2 SLP225 T01390111 ', 'obs 201211220353-KIAH');
is($rpt->{precipslr}, undef, 'precipslr 201211220353-KIAH');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211220353-KIAH');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211220353-KIAH');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211220353-KIAH');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220353-KIAH');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220353-KIAH');
is($rpt->{ptemperature}, 'T01390111', 'ptemperature 201211220353-KIAH');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211220353-KIAH');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.5','T01390111'], 'remark_arrayref 201211220353-KIAH');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211220353-KIAH');
is($rpt->{slp_kgcm}, '1.0426637', 'slp_kgcm 201211220353-KIAH');
is($rpt->{slp_lbin}, '14.8301355', 'slp_lbin 201211220353-KIAH');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211220353-KIAH');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211220353-KIAH');
is($rpt->{station_type}, 'Automated', 'station_type 201211220353-KIAH');
is($rpt->{storm}, undef, 'storm 201211220353-KIAH');
is($rpt->{temperature_c}, '14', 'temperature_c 201211220353-KIAH');
is($rpt->{temperature_f}, '57', 'temperature_f 201211220353-KIAH');
is($rpt->{templateout}, undef, 'templateout 201211220353-KIAH');
is($rpt->{tfile}, undef, 'tfile 201211220353-KIAH');
is($rpt->{thpressure}, undef, 'thpressure 201211220353-KIAH');
is($rpt->{time}, '0353', 'time 201211220353-KIAH');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220353-KIAH');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220353-KIAH');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220353-KIAH');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220353-KIAH');
is($rpt->{winddir}, '0', 'winddir 201211220353-KIAH');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220353-KIAH');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220353-KIAH');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220353-KIAH');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220353-KIAH');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220353-KIAH');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220353-KIAH');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220353-KIAH');
