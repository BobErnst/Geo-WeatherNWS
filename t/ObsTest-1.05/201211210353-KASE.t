#!perl -T

use strict;
use warnings;

# Test 201211210353-KASE
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KASE 210353Z 18005KT 10SM CLR M02/M08 A3029 RMK AO2 SLP241 T10221078 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KASE 210353Z 18005KT 10SM CLR M02/M08 A3029 RMK AO2 SLP241 T10221078 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KASE');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KASE');
is($rpt->{code}, 'KASE', 'code 201211210353-KASE');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KASE');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KASE');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KASE');
is($rpt->{day}, '21', 'day 201211210353-KASE');
is($rpt->{dewpoint_c}, '-8', 'dewpoint_c 201211210353-KASE');
is($rpt->{dewpoint_f}, '18', 'dewpoint_f 201211210353-KASE');
is($rpt->{error}, undef, 'error 201211210353-KASE');
is($rpt->{errortext}, undef, 'errortext 201211210353-KASE');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KASE');
is($rpt->{heat_index_c}, '83', 'heat_index_c 201211210353-KASE');
is($rpt->{heat_index_f}, '182', 'heat_index_f 201211210353-KASE');
is($rpt->{http}, undef, 'http 201211210353-KASE');
is($rpt->{intensity}, undef, 'intensity 201211210353-KASE');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KASE');
is($rpt->{obs}, '2012/11/21 03:53 KASE 210353Z 18005KT 10SM CLR M02/M08 A3029 RMK AO2 SLP241 T10221078 ', 'obs 201211210353-KASE');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KASE');
is($rpt->{pressure_inhg}, '30.29', 'pressure_inhg 201211210353-KASE');
is($rpt->{pressure_kgcm}, '1.045962164', 'pressure_kgcm 201211210353-KASE');
is($rpt->{pressure_lbin}, '14.87705466', 'pressure_lbin 201211210353-KASE');
is($rpt->{pressure_mb}, '1026', 'pressure_mb 201211210353-KASE');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211210353-KASE');
is($rpt->{ptemperature}, 'T10221078', 'ptemperature 201211210353-KASE');
is($rpt->{relative_humidity}, '63', 'relative_humidity 201211210353-KASE');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1024.1','T10221078'], 'remark_arrayref 201211210353-KASE');
is($rpt->{slp_inhg}, '30.24', 'slp_inhg 201211210353-KASE');
is($rpt->{slp_kgcm}, '1.044295252', 'slp_kgcm 201211210353-KASE');
is($rpt->{slp_lbin}, '14.85334158', 'slp_lbin 201211210353-KASE');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211210353-KASE');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211210353-KASE');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KASE');
is($rpt->{storm}, undef, 'storm 201211210353-KASE');
is($rpt->{temperature_c}, '-2', 'temperature_c 201211210353-KASE');
is($rpt->{temperature_f}, '28', 'temperature_f 201211210353-KASE');
is($rpt->{templateout}, undef, 'templateout 201211210353-KASE');
is($rpt->{tfile}, undef, 'tfile 201211210353-KASE');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KASE');
is($rpt->{time}, '0353', 'time 201211210353-KASE');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KASE');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KASE');
is($rpt->{windchill_c}, '-6', 'windchill_c 201211210353-KASE');
is($rpt->{windchill_f}, '22', 'windchill_f 201211210353-KASE');
is($rpt->{winddir}, '180', 'winddir 201211210353-KASE');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210353-KASE');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KASE');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KASE');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KASE');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210353-KASE');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210353-KASE');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210353-KASE');
