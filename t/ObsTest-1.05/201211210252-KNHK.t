#!perl -T

use strict;
use warnings;

# Test 201211210252-KNHK
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:52 KNHK 210252Z 03003KT 10SM FEW120 SCT180 06/03 A3013 RMK AO2 SLP204 T00560028 53005  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:52 KNHK 210252Z 03003KT 10SM FEW120 SCT180 06/03 A3013 RMK AO2 SLP204 T00560028 53005  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211210252-KNHK');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW120','SCT180'], 'cloudlevel_arrayref 201211210252-KNHK');
is($rpt->{code}, 'KNHK', 'code 201211210252-KNHK');
is($rpt->{conditions1}, undef, 'conditions1 201211210252-KNHK');
is($rpt->{conditions2}, undef, 'conditions2 201211210252-KNHK');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210252-KNHK');
is($rpt->{day}, '21', 'day 201211210252-KNHK');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210252-KNHK');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210252-KNHK');
is($rpt->{error}, undef, 'error 201211210252-KNHK');
is($rpt->{errortext}, undef, 'errortext 201211210252-KNHK');
is($rpt->{eventbe}, undef, 'eventbe 201211210252-KNHK');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210252-KNHK');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210252-KNHK');
is($rpt->{http}, undef, 'http 201211210252-KNHK');
is($rpt->{intensity}, undef, 'intensity 201211210252-KNHK');
is($rpt->{maintenance}, undef, 'maintenance 201211210252-KNHK');
is($rpt->{obs}, '2012/11/21 02:52 KNHK 210252Z 03003KT 10SM FEW120 SCT180 06/03 A3013 RMK AO2 SLP204 T00560028 53005  ', 'obs 201211210252-KNHK');
is($rpt->{precipslr}, undef, 'precipslr 201211210252-KNHK');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210252-KNHK');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210252-KNHK');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210252-KNHK');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210252-KNHK');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210252-KNHK');
is($rpt->{ptemperature}, 'T00560028', 'ptemperature 201211210252-KNHK');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210252-KNHK');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.4','T00560028','53005'], 'remark_arrayref 201211210252-KNHK');
is($rpt->{slp_inhg}, '30.13', 'slp_inhg 201211210252-KNHK');
is($rpt->{slp_kgcm}, '1.040522288', 'slp_kgcm 201211210252-KNHK');
is($rpt->{slp_lbin}, '14.79967752', 'slp_lbin 201211210252-KNHK');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210252-KNHK');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210252-KNHK');
is($rpt->{station_type}, 'Automated', 'station_type 201211210252-KNHK');
is($rpt->{storm}, undef, 'storm 201211210252-KNHK');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210252-KNHK');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210252-KNHK');
is($rpt->{templateout}, undef, 'templateout 201211210252-KNHK');
is($rpt->{tfile}, undef, 'tfile 201211210252-KNHK');
is($rpt->{thpressure}, '53005', 'thpressure 201211210252-KNHK');
is($rpt->{time}, '0252', 'time 201211210252-KNHK');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210252-KNHK');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210252-KNHK');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210252-KNHK');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210252-KNHK');
is($rpt->{winddir}, '30', 'winddir 201211210252-KNHK');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211210252-KNHK');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210252-KNHK');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210252-KNHK');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210252-KNHK');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210252-KNHK');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210252-KNHK');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210252-KNHK');
