#!perl -T

use strict;
use warnings;

# Test 201211210252-KOMA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:52 KOMA 210252Z 16007KT 10SM FEW250 07/01 A3015 RMK AO2 SLP213 T00720006 50003 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:52 KOMA 210252Z 16007KT 10SM FEW250 07/01 A3015 RMK AO2 SLP213 T00720006 50003 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211210252-KOMA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW250'], 'cloudlevel_arrayref 201211210252-KOMA');
is($rpt->{code}, 'KOMA', 'code 201211210252-KOMA');
is($rpt->{conditions1}, undef, 'conditions1 201211210252-KOMA');
is($rpt->{conditions2}, undef, 'conditions2 201211210252-KOMA');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210252-KOMA');
is($rpt->{day}, '21', 'day 201211210252-KOMA');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210252-KOMA');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210252-KOMA');
is($rpt->{error}, undef, 'error 201211210252-KOMA');
is($rpt->{errortext}, undef, 'errortext 201211210252-KOMA');
is($rpt->{eventbe}, undef, 'eventbe 201211210252-KOMA');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211210252-KOMA');
is($rpt->{heat_index_f}, '114', 'heat_index_f 201211210252-KOMA');
is($rpt->{http}, undef, 'http 201211210252-KOMA');
is($rpt->{intensity}, undef, 'intensity 201211210252-KOMA');
is($rpt->{maintenance}, undef, 'maintenance 201211210252-KOMA');
is($rpt->{obs}, '2012/11/21 02:52 KOMA 210252Z 16007KT 10SM FEW250 07/01 A3015 RMK AO2 SLP213 T00720006 50003 ', 'obs 201211210252-KOMA');
is($rpt->{precipslr}, undef, 'precipslr 201211210252-KOMA');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210252-KOMA');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210252-KOMA');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210252-KOMA');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210252-KOMA');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210252-KOMA');
is($rpt->{ptemperature}, 'T00720006', 'ptemperature 201211210252-KOMA');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211210252-KOMA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.3','T00720006','50003'], 'remark_arrayref 201211210252-KOMA');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210252-KOMA');
is($rpt->{slp_kgcm}, '1.041440036', 'slp_kgcm 201211210252-KOMA');
is($rpt->{slp_lbin}, '14.81273094', 'slp_lbin 201211210252-KOMA');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210252-KOMA');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210252-KOMA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210252-KOMA');
is($rpt->{storm}, undef, 'storm 201211210252-KOMA');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210252-KOMA');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210252-KOMA');
is($rpt->{templateout}, undef, 'templateout 201211210252-KOMA');
is($rpt->{tfile}, undef, 'tfile 201211210252-KOMA');
is($rpt->{thpressure}, '50003', 'thpressure 201211210252-KOMA');
is($rpt->{time}, '0252', 'time 201211210252-KOMA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210252-KOMA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210252-KOMA');
is($rpt->{windchill_c}, '5', 'windchill_c 201211210252-KOMA');
is($rpt->{windchill_f}, '40', 'windchill_f 201211210252-KOMA');
is($rpt->{winddir}, '160', 'winddir 201211210252-KOMA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210252-KOMA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210252-KOMA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210252-KOMA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210252-KOMA');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210252-KOMA');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210252-KOMA');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210252-KOMA');
