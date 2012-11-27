#!perl -T

use strict;
use warnings;

# Test 201211230353-KTTN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KTTN 230353Z AUTO 00000KT 8SM CLR 03/01 A3015 RMK AO2 SLP204 T00280006 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KTTN 230353Z AUTO 00000KT 8SM CLR 03/01 A3015 RMK AO2 SLP204 T00280006 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230353-KTTN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230353-KTTN');
is($rpt->{code}, 'KTTN', 'code 201211230353-KTTN');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KTTN');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KTTN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230353-KTTN');
is($rpt->{day}, '23', 'day 201211230353-KTTN');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211230353-KTTN');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211230353-KTTN');
is($rpt->{error}, undef, 'error 201211230353-KTTN');
is($rpt->{errortext}, undef, 'errortext 201211230353-KTTN');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KTTN');
is($rpt->{heat_index_c}, '55', 'heat_index_c 201211230353-KTTN');
is($rpt->{heat_index_f}, '131', 'heat_index_f 201211230353-KTTN');
is($rpt->{http}, undef, 'http 201211230353-KTTN');
is($rpt->{intensity}, undef, 'intensity 201211230353-KTTN');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KTTN');
is($rpt->{obs}, '2012/11/23 03:53 KTTN 230353Z AUTO 00000KT 8SM CLR 03/01 A3015 RMK AO2 SLP204 T00280006 ', 'obs 201211230353-KTTN');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KTTN');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211230353-KTTN');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211230353-KTTN');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211230353-KTTN');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211230353-KTTN');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211230353-KTTN');
is($rpt->{ptemperature}, 'T00280006', 'ptemperature 201211230353-KTTN');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211230353-KTTN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.4','T00280006'], 'remark_arrayref 201211230353-KTTN');
is($rpt->{slp_inhg}, '30.13', 'slp_inhg 201211230353-KTTN');
is($rpt->{slp_kgcm}, '1.040522288', 'slp_kgcm 201211230353-KTTN');
is($rpt->{slp_lbin}, '14.79967752', 'slp_lbin 201211230353-KTTN');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211230353-KTTN');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211230353-KTTN');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KTTN');
is($rpt->{storm}, undef, 'storm 201211230353-KTTN');
is($rpt->{temperature_c}, '03', 'temperature_c 201211230353-KTTN');
is($rpt->{temperature_f}, '37', 'temperature_f 201211230353-KTTN');
is($rpt->{templateout}, undef, 'templateout 201211230353-KTTN');
is($rpt->{tfile}, undef, 'tfile 201211230353-KTTN');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KTTN');
is($rpt->{time}, '0353', 'time 201211230353-KTTN');
is($rpt->{visibility_km}, '13', 'visibility_km 201211230353-KTTN');
is($rpt->{visibility_mi}, '8', 'visibility_mi 201211230353-KTTN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230353-KTTN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230353-KTTN');
is($rpt->{winddir}, '0', 'winddir 201211230353-KTTN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230353-KTTN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KTTN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KTTN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KTTN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230353-KTTN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230353-KTTN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230353-KTTN');
