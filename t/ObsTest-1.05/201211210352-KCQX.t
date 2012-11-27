#!perl -T

use strict;
use warnings;

# Test 201211210352-KCQX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:52 KCQX 210352Z AUTO 04008KT 10SM CLR 08/03 A3012 RMK AO2 SLP202 T00830028 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:52 KCQX 210352Z AUTO 04008KT 10SM CLR 08/03 A3012 RMK AO2 SLP202 T00830028 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210352-KCQX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210352-KCQX');
is($rpt->{code}, 'KCQX', 'code 201211210352-KCQX');
is($rpt->{conditions1}, undef, 'conditions1 201211210352-KCQX');
is($rpt->{conditions2}, undef, 'conditions2 201211210352-KCQX');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210352-KCQX');
is($rpt->{day}, '21', 'day 201211210352-KCQX');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210352-KCQX');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210352-KCQX');
is($rpt->{error}, undef, 'error 201211210352-KCQX');
is($rpt->{errortext}, undef, 'errortext 201211210352-KCQX');
is($rpt->{eventbe}, undef, 'eventbe 201211210352-KCQX');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211210352-KCQX');
is($rpt->{heat_index_f}, '107', 'heat_index_f 201211210352-KCQX');
is($rpt->{http}, undef, 'http 201211210352-KCQX');
is($rpt->{intensity}, undef, 'intensity 201211210352-KCQX');
is($rpt->{maintenance}, undef, 'maintenance 201211210352-KCQX');
is($rpt->{obs}, '2012/11/21 03:52 KCQX 210352Z AUTO 04008KT 10SM CLR 08/03 A3012 RMK AO2 SLP202 T00830028 ', 'obs 201211210352-KCQX');
is($rpt->{precipslr}, undef, 'precipslr 201211210352-KCQX');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210352-KCQX');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210352-KCQX');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210352-KCQX');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210352-KCQX');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210352-KCQX');
is($rpt->{ptemperature}, 'T00830028', 'ptemperature 201211210352-KCQX');
is($rpt->{relative_humidity}, '71', 'relative_humidity 201211210352-KCQX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.2','T00830028'], 'remark_arrayref 201211210352-KCQX');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210352-KCQX');
is($rpt->{slp_kgcm}, '1.040318344', 'slp_kgcm 201211210352-KCQX');
is($rpt->{slp_lbin}, '14.79677676', 'slp_lbin 201211210352-KCQX');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210352-KCQX');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210352-KCQX');
is($rpt->{station_type}, 'Automated', 'station_type 201211210352-KCQX');
is($rpt->{storm}, undef, 'storm 201211210352-KCQX');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210352-KCQX');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210352-KCQX');
is($rpt->{templateout}, undef, 'templateout 201211210352-KCQX');
is($rpt->{tfile}, undef, 'tfile 201211210352-KCQX');
is($rpt->{thpressure}, undef, 'thpressure 201211210352-KCQX');
is($rpt->{time}, '0352', 'time 201211210352-KCQX');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210352-KCQX');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210352-KCQX');
is($rpt->{windchill_c}, '6', 'windchill_c 201211210352-KCQX');
is($rpt->{windchill_f}, '42', 'windchill_f 201211210352-KCQX');
is($rpt->{winddir}, '40', 'winddir 201211210352-KCQX');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211210352-KCQX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210352-KCQX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210352-KCQX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210352-KCQX');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211210352-KCQX');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211210352-KCQX');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211210352-KCQX');
