#!perl -T

use strict;
use warnings;

# Test 201211201853-KP68
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 18:53 KP68 201853Z AUTO VRB04KT 12/M02 A3014 RMK AO1 SLP172 T01171022  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 18:53 KP68 201853Z AUTO VRB04KT 12/M02 A3014 RMK AO1 SLP172 T01171022  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211201853-KP68');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211201853-KP68');
is($rpt->{code}, 'KP68', 'code 201211201853-KP68');
is($rpt->{conditions1}, undef, 'conditions1 201211201853-KP68');
is($rpt->{conditions2}, undef, 'conditions2 201211201853-KP68');
is($rpt->{conditionstext}, undef, 'conditionstext 201211201853-KP68');
is($rpt->{day}, '20', 'day 201211201853-KP68');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211201853-KP68');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211201853-KP68');
is($rpt->{error}, undef, 'error 201211201853-KP68');
is($rpt->{errortext}, undef, 'errortext 201211201853-KP68');
is($rpt->{eventbe}, undef, 'eventbe 201211201853-KP68');
is($rpt->{heat_index_c}, '31', 'heat_index_c 201211201853-KP68');
is($rpt->{heat_index_f}, '88', 'heat_index_f 201211201853-KP68');
is($rpt->{http}, undef, 'http 201211201853-KP68');
is($rpt->{intensity}, undef, 'intensity 201211201853-KP68');
is($rpt->{maintenance}, undef, 'maintenance 201211201853-KP68');
is($rpt->{obs}, '2012/11/20 18:53 KP68 201853Z AUTO VRB04KT 12/M02 A3014 RMK AO1 SLP172 T01171022  ', 'obs 201211201853-KP68');
is($rpt->{precipslr}, undef, 'precipslr 201211201853-KP68');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211201853-KP68');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211201853-KP68');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211201853-KP68');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211201853-KP68');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211201853-KP68');
is($rpt->{ptemperature}, 'T01171022', 'ptemperature 201211201853-KP68');
is($rpt->{relative_humidity}, '38', 'relative_humidity 201211201853-KP68');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1','1017.2','T01171022'], 'remark_arrayref 201211201853-KP68');
is($rpt->{slp_inhg}, '30.03', 'slp_inhg 201211201853-KP68');
is($rpt->{slp_kgcm}, '1.037259184', 'slp_kgcm 201211201853-KP68');
is($rpt->{slp_lbin}, '14.75326536', 'slp_lbin 201211201853-KP68');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211201853-KP68');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211201853-KP68');
is($rpt->{station_type}, 'Automated', 'station_type 201211201853-KP68');
is($rpt->{storm}, undef, 'storm 201211201853-KP68');
is($rpt->{temperature_c}, '12', 'temperature_c 201211201853-KP68');
is($rpt->{temperature_f}, '54', 'temperature_f 201211201853-KP68');
is($rpt->{templateout}, undef, 'templateout 201211201853-KP68');
is($rpt->{tfile}, undef, 'tfile 201211201853-KP68');
is($rpt->{thpressure}, undef, 'thpressure 201211201853-KP68');
is($rpt->{time}, '1853', 'time 201211201853-KP68');
is($rpt->{visibility_km}, undef, 'visibility_km 201211201853-KP68');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211201853-KP68');
is($rpt->{windchill_c}, undef, 'windchill_c 201211201853-KP68');
is($rpt->{windchill_f}, undef, 'windchill_f 201211201853-KP68');
is($rpt->{winddir}, '4', 'winddir 201211201853-KP68');
is($rpt->{winddirtext}, 'Variable', 'winddirtext 201211201853-KP68');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211201853-KP68');
is($rpt->{windgustkts}, '0', 'windgustkts 201211201853-KP68');
is($rpt->{windgustmph}, '0', 'windgustmph 201211201853-KP68');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211201853-KP68');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211201853-KP68');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211201853-KP68');
