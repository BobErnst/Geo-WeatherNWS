#!perl -T

use strict;
use warnings;

# Test 201211220552-KCFV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:52 KCFV 220552Z AUTO 16008KT 10SM CLR 13/05 A3003 RMK AO2 SLP167 T01330050 10172 20128 402330011 58013 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:52 KCFV 220552Z AUTO 16008KT 10SM CLR 13/05 A3003 RMK AO2 SLP167 T01330050 10172 20128 402330011 58013 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220552-KCFV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220552-KCFV');
is($rpt->{code}, 'KCFV', 'code 201211220552-KCFV');
is($rpt->{conditions1}, undef, 'conditions1 201211220552-KCFV');
is($rpt->{conditions2}, undef, 'conditions2 201211220552-KCFV');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220552-KCFV');
is($rpt->{day}, '22', 'day 201211220552-KCFV');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211220552-KCFV');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211220552-KCFV');
is($rpt->{error}, undef, 'error 201211220552-KCFV');
is($rpt->{errortext}, undef, 'errortext 201211220552-KCFV');
is($rpt->{eventbe}, undef, 'eventbe 201211220552-KCFV');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211220552-KCFV');
is($rpt->{heat_index_f}, '89', 'heat_index_f 201211220552-KCFV');
is($rpt->{http}, undef, 'http 201211220552-KCFV');
is($rpt->{intensity}, undef, 'intensity 201211220552-KCFV');
is($rpt->{maintenance}, undef, 'maintenance 201211220552-KCFV');
is($rpt->{obs}, '2012/11/22 05:52 KCFV 220552Z AUTO 16008KT 10SM CLR 13/05 A3003 RMK AO2 SLP167 T01330050 10172 20128 402330011 58013 ', 'obs 201211220552-KCFV');
is($rpt->{precipslr}, undef, 'precipslr 201211220552-KCFV');
is($rpt->{pressure_inhg}, '30.03', 'pressure_inhg 201211220552-KCFV');
is($rpt->{pressure_kgcm}, '1.036983948', 'pressure_kgcm 201211220552-KCFV');
is($rpt->{pressure_lbin}, '14.74935462', 'pressure_lbin 201211220552-KCFV');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211220552-KCFV');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211220552-KCFV');
is($rpt->{ptemperature}, 'T01330050', 'ptemperature 201211220552-KCFV');
is($rpt->{relative_humidity}, '58', 'relative_humidity 201211220552-KCFV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1016.7','T01330050','10172','20128','402330011','58013'], 'remark_arrayref 201211220552-KCFV');
is($rpt->{slp_inhg}, '30.02', 'slp_inhg 201211220552-KCFV');
is($rpt->{slp_kgcm}, '1.036749324', 'slp_kgcm 201211220552-KCFV');
is($rpt->{slp_lbin}, '14.74601346', 'slp_lbin 201211220552-KCFV');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211220552-KCFV');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211220552-KCFV');
is($rpt->{station_type}, 'Automated', 'station_type 201211220552-KCFV');
is($rpt->{storm}, undef, 'storm 201211220552-KCFV');
is($rpt->{temperature_c}, '13', 'temperature_c 201211220552-KCFV');
is($rpt->{temperature_f}, '55', 'temperature_f 201211220552-KCFV');
is($rpt->{templateout}, undef, 'templateout 201211220552-KCFV');
is($rpt->{tfile}, undef, 'tfile 201211220552-KCFV');
is($rpt->{thpressure}, '58013', 'thpressure 201211220552-KCFV');
is($rpt->{time}, '0552', 'time 201211220552-KCFV');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220552-KCFV');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220552-KCFV');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220552-KCFV');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220552-KCFV');
is($rpt->{winddir}, '160', 'winddir 201211220552-KCFV');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220552-KCFV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220552-KCFV');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220552-KCFV');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220552-KCFV');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211220552-KCFV');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211220552-KCFV');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211220552-KCFV');
