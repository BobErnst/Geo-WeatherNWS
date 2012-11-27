#!perl -T

use strict;
use warnings;

# Test 201211210357-KCQM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:57 KCQM 210357Z AUTO 19005KT 10SM CLR 03/M03 A2999 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:57 KCQM 210357Z AUTO 19005KT 10SM CLR 03/M03 A2999 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210357-KCQM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210357-KCQM');
is($rpt->{code}, 'KCQM', 'code 201211210357-KCQM');
is($rpt->{conditions1}, undef, 'conditions1 201211210357-KCQM');
is($rpt->{conditions2}, undef, 'conditions2 201211210357-KCQM');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210357-KCQM');
is($rpt->{day}, '21', 'day 201211210357-KCQM');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210357-KCQM');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210357-KCQM');
is($rpt->{error}, undef, 'error 201211210357-KCQM');
is($rpt->{errortext}, undef, 'errortext 201211210357-KCQM');
is($rpt->{eventbe}, undef, 'eventbe 201211210357-KCQM');
is($rpt->{heat_index_c}, '60', 'heat_index_c 201211210357-KCQM');
is($rpt->{heat_index_f}, '141', 'heat_index_f 201211210357-KCQM');
is($rpt->{http}, undef, 'http 201211210357-KCQM');
is($rpt->{intensity}, undef, 'intensity 201211210357-KCQM');
is($rpt->{maintenance}, undef, 'maintenance 201211210357-KCQM');
is($rpt->{obs}, '2012/11/21 03:57 KCQM 210357Z AUTO 19005KT 10SM CLR 03/M03 A2999 RMK AO2 ', 'obs 201211210357-KCQM');
is($rpt->{precipslr}, undef, 'precipslr 201211210357-KCQM');
is($rpt->{pressure_inhg}, '29.99', 'pressure_inhg 201211210357-KCQM');
is($rpt->{pressure_kgcm}, '1.035602684', 'pressure_kgcm 201211210357-KCQM');
is($rpt->{pressure_lbin}, '14.72970846', 'pressure_lbin 201211210357-KCQM');
is($rpt->{pressure_mb}, '1016', 'pressure_mb 201211210357-KCQM');
is($rpt->{pressure_mmhg}, '762', 'pressure_mmhg 201211210357-KCQM');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210357-KCQM');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211210357-KCQM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210357-KCQM');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210357-KCQM');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210357-KCQM');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210357-KCQM');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210357-KCQM');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210357-KCQM');
is($rpt->{station_type}, 'Automated', 'station_type 201211210357-KCQM');
is($rpt->{storm}, undef, 'storm 201211210357-KCQM');
is($rpt->{temperature_c}, '03', 'temperature_c 201211210357-KCQM');
is($rpt->{temperature_f}, '37', 'temperature_f 201211210357-KCQM');
is($rpt->{templateout}, undef, 'templateout 201211210357-KCQM');
is($rpt->{tfile}, undef, 'tfile 201211210357-KCQM');
is($rpt->{thpressure}, undef, 'thpressure 201211210357-KCQM');
is($rpt->{time}, '0357', 'time 201211210357-KCQM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210357-KCQM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210357-KCQM');
is($rpt->{windchill_c}, '0', 'windchill_c 201211210357-KCQM');
is($rpt->{windchill_f}, '33', 'windchill_f 201211210357-KCQM');
is($rpt->{winddir}, '190', 'winddir 201211210357-KCQM');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210357-KCQM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210357-KCQM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210357-KCQM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210357-KCQM');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210357-KCQM');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210357-KCQM');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210357-KCQM');
