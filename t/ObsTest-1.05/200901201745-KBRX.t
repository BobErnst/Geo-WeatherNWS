#!perl -T

use strict;
use warnings;

# Test 200901201745-KBRX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2009/01/20 17:45 KBRX 201745Z AUTO 22032G44KT 10/M18 RMK AO1 T01011180 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2009/01/20 17:45 KBRX 201745Z AUTO 22032G44KT 10/M18 RMK AO1 T01011180 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 200901201745-KBRX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 200901201745-KBRX');
is($rpt->{code}, 'KBRX', 'code 200901201745-KBRX');
is($rpt->{conditions1}, undef, 'conditions1 200901201745-KBRX');
is($rpt->{conditions2}, undef, 'conditions2 200901201745-KBRX');
is($rpt->{conditionstext}, undef, 'conditionstext 200901201745-KBRX');
is($rpt->{day}, '20', 'day 200901201745-KBRX');
is($rpt->{dewpoint_c}, '-18', 'dewpoint_c 200901201745-KBRX');
is($rpt->{dewpoint_f}, '-0', 'dewpoint_f 200901201745-KBRX');
is($rpt->{error}, undef, 'error 200901201745-KBRX');
is($rpt->{errortext}, undef, 'errortext 200901201745-KBRX');
is($rpt->{eventbe}, undef, 'eventbe 200901201745-KBRX');
is($rpt->{heat_index_c}, '18', 'heat_index_c 200901201745-KBRX');
is($rpt->{heat_index_f}, '64', 'heat_index_f 200901201745-KBRX');
is($rpt->{http}, undef, 'http 200901201745-KBRX');
is($rpt->{intensity}, undef, 'intensity 200901201745-KBRX');
is($rpt->{maintenance}, undef, 'maintenance 200901201745-KBRX');
is($rpt->{obs}, '2009/01/20 17:45 KBRX 201745Z AUTO 22032G44KT 10/M18 RMK AO1 T01011180 ', 'obs 200901201745-KBRX');
is($rpt->{precipslr}, undef, 'precipslr 200901201745-KBRX');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 200901201745-KBRX');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 200901201745-KBRX');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 200901201745-KBRX');
is($rpt->{pressure_mb}, undef, 'pressure_mb 200901201745-KBRX');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 200901201745-KBRX');
is($rpt->{ptemperature}, 'T01011180', 'ptemperature 200901201745-KBRX');
is($rpt->{relative_humidity}, '12', 'relative_humidity 200901201745-KBRX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1','T01011180'], 'remark_arrayref 200901201745-KBRX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 200901201745-KBRX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 200901201745-KBRX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 200901201745-KBRX');
is($rpt->{slp_mb}, undef, 'slp_mb 200901201745-KBRX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 200901201745-KBRX');
is($rpt->{station_type}, 'Automated', 'station_type 200901201745-KBRX');
is($rpt->{storm}, undef, 'storm 200901201745-KBRX');
is($rpt->{temperature_c}, '10', 'temperature_c 200901201745-KBRX');
is($rpt->{temperature_f}, '50', 'temperature_f 200901201745-KBRX');
is($rpt->{templateout}, undef, 'templateout 200901201745-KBRX');
is($rpt->{tfile}, undef, 'tfile 200901201745-KBRX');
is($rpt->{thpressure}, undef, 'thpressure 200901201745-KBRX');
is($rpt->{time}, '1745', 'time 200901201745-KBRX');
is($rpt->{visibility_km}, undef, 'visibility_km 200901201745-KBRX');
is($rpt->{visibility_mi}, undef, 'visibility_mi 200901201745-KBRX');
is($rpt->{windchill_c}, '5', 'windchill_c 200901201745-KBRX');
is($rpt->{windchill_f}, '41', 'windchill_f 200901201745-KBRX');
is($rpt->{winddir}, '220', 'winddir 200901201745-KBRX');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 200901201745-KBRX');
is($rpt->{windgustkmh}, '81', 'windgustkmh 200901201745-KBRX');
is($rpt->{windgustkts}, '44', 'windgustkts 200901201745-KBRX');
is($rpt->{windgustmph}, '51', 'windgustmph 200901201745-KBRX');
is($rpt->{windspeedkmh}, '59', 'windspeedkmh 200901201745-KBRX');
is($rpt->{windspeedkts}, '32', 'windspeedkts 200901201745-KBRX');
is($rpt->{windspeedmph}, '37', 'windspeedmph 200901201745-KBRX');
