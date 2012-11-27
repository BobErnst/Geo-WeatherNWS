#!perl -T

use strict;
use warnings;

# Test 201211220355-KCVX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KCVX 220355Z AUTO 20010KT 10SM CLR 10/03 A3000 RMK AO2 T00960025 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KCVX 220355Z AUTO 20010KT 10SM CLR 10/03 A3000 RMK AO2 T00960025 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220355-KCVX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220355-KCVX');
is($rpt->{code}, 'KCVX', 'code 201211220355-KCVX');
is($rpt->{conditions1}, undef, 'conditions1 201211220355-KCVX');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KCVX');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220355-KCVX');
is($rpt->{day}, '22', 'day 201211220355-KCVX');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211220355-KCVX');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211220355-KCVX');
is($rpt->{error}, undef, 'error 201211220355-KCVX');
is($rpt->{errortext}, undef, 'errortext 201211220355-KCVX');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KCVX');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211220355-KCVX');
is($rpt->{heat_index_f}, '100', 'heat_index_f 201211220355-KCVX');
is($rpt->{http}, undef, 'http 201211220355-KCVX');
is($rpt->{intensity}, undef, 'intensity 201211220355-KCVX');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KCVX');
is($rpt->{obs}, '2012/11/22 03:55 KCVX 220355Z AUTO 20010KT 10SM CLR 10/03 A3000 RMK AO2 T00960025 ', 'obs 201211220355-KCVX');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KCVX');
is($rpt->{pressure_inhg}, '30.00', 'pressure_inhg 201211220355-KCVX');
is($rpt->{pressure_kgcm}, '1.035948', 'pressure_kgcm 201211220355-KCVX');
is($rpt->{pressure_lbin}, '14.73462', 'pressure_lbin 201211220355-KCVX');
is($rpt->{pressure_mb}, '1016', 'pressure_mb 201211220355-KCVX');
is($rpt->{pressure_mmhg}, '762', 'pressure_mmhg 201211220355-KCVX');
is($rpt->{ptemperature}, 'T00960025', 'ptemperature 201211220355-KCVX');
is($rpt->{relative_humidity}, '62', 'relative_humidity 201211220355-KCVX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00960025'], 'remark_arrayref 201211220355-KCVX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KCVX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KCVX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KCVX');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KCVX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KCVX');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KCVX');
is($rpt->{storm}, undef, 'storm 201211220355-KCVX');
is($rpt->{temperature_c}, '10', 'temperature_c 201211220355-KCVX');
is($rpt->{temperature_f}, '50', 'temperature_f 201211220355-KCVX');
is($rpt->{templateout}, undef, 'templateout 201211220355-KCVX');
is($rpt->{tfile}, undef, 'tfile 201211220355-KCVX');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KCVX');
is($rpt->{time}, '0355', 'time 201211220355-KCVX');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220355-KCVX');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220355-KCVX');
is($rpt->{windchill_c}, '7', 'windchill_c 201211220355-KCVX');
is($rpt->{windchill_f}, '45', 'windchill_f 201211220355-KCVX');
is($rpt->{winddir}, '200', 'winddir 201211220355-KCVX');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220355-KCVX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KCVX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KCVX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KCVX');
is($rpt->{windspeedkmh}, '19', 'windspeedkmh 201211220355-KCVX');
is($rpt->{windspeedkts}, '10', 'windspeedkts 201211220355-KCVX');
is($rpt->{windspeedmph}, '12', 'windspeedmph 201211220355-KCVX');
