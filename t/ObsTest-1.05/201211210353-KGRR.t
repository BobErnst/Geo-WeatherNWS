#!perl -T

use strict;
use warnings;

# Test 201211210353-KGRR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KGRR 210353Z 30003KT 7SM OVC034 10/04 A3016 RMK AO2 SLP215 T01000044 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KGRR 210353Z 30003KT 7SM OVC034 10/04 A3016 RMK AO2 SLP215 T01000044 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210353-KGRR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC034'], 'cloudlevel_arrayref 201211210353-KGRR');
is($rpt->{code}, 'KGRR', 'code 201211210353-KGRR');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KGRR');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KGRR');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210353-KGRR');
is($rpt->{day}, '21', 'day 201211210353-KGRR');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210353-KGRR');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210353-KGRR');
is($rpt->{error}, undef, 'error 201211210353-KGRR');
is($rpt->{errortext}, undef, 'errortext 201211210353-KGRR');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KGRR');
is($rpt->{heat_index_c}, '37', 'heat_index_c 201211210353-KGRR');
is($rpt->{heat_index_f}, '99', 'heat_index_f 201211210353-KGRR');
is($rpt->{http}, undef, 'http 201211210353-KGRR');
is($rpt->{intensity}, undef, 'intensity 201211210353-KGRR');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KGRR');
is($rpt->{obs}, '2012/11/21 03:53 KGRR 210353Z 30003KT 7SM OVC034 10/04 A3016 RMK AO2 SLP215 T01000044 ', 'obs 201211210353-KGRR');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KGRR');
is($rpt->{pressure_inhg}, '30.16', 'pressure_inhg 201211210353-KGRR');
is($rpt->{pressure_kgcm}, '1.041473056', 'pressure_kgcm 201211210353-KGRR');
is($rpt->{pressure_lbin}, '14.81320464', 'pressure_lbin 201211210353-KGRR');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210353-KGRR');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210353-KGRR');
is($rpt->{ptemperature}, 'T01000044', 'ptemperature 201211210353-KGRR');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211210353-KGRR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.5','T01000044'], 'remark_arrayref 201211210353-KGRR');
is($rpt->{slp_inhg}, '30.16', 'slp_inhg 201211210353-KGRR');
is($rpt->{slp_kgcm}, '1.04164398', 'slp_kgcm 201211210353-KGRR');
is($rpt->{slp_lbin}, '14.8156317', 'slp_lbin 201211210353-KGRR');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211210353-KGRR');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210353-KGRR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KGRR');
is($rpt->{storm}, undef, 'storm 201211210353-KGRR');
is($rpt->{temperature_c}, '10', 'temperature_c 201211210353-KGRR');
is($rpt->{temperature_f}, '50', 'temperature_f 201211210353-KGRR');
is($rpt->{templateout}, undef, 'templateout 201211210353-KGRR');
is($rpt->{tfile}, undef, 'tfile 201211210353-KGRR');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KGRR');
is($rpt->{time}, '0353', 'time 201211210353-KGRR');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210353-KGRR');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210353-KGRR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KGRR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KGRR');
is($rpt->{winddir}, '300', 'winddir 201211210353-KGRR');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210353-KGRR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KGRR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KGRR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KGRR');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210353-KGRR');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210353-KGRR');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210353-KGRR');
