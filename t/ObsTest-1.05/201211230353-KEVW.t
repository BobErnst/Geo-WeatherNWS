#!perl -T

use strict;
use warnings;

# Test 201211230353-KEVW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KEVW 230353Z AUTO 35004KT 10SM CLR M02/M09 A3047 RMK AO2 SLP333 T10171089 FZRANO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KEVW 230353Z AUTO 35004KT 10SM CLR M02/M09 A3047 RMK AO2 SLP333 T10171089 FZRANO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230353-KEVW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230353-KEVW');
is($rpt->{code}, 'KEVW', 'code 201211230353-KEVW');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KEVW');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KEVW');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230353-KEVW');
is($rpt->{day}, '23', 'day 201211230353-KEVW');
is($rpt->{dewpoint_c}, '-9', 'dewpoint_c 201211230353-KEVW');
is($rpt->{dewpoint_f}, '16', 'dewpoint_f 201211230353-KEVW');
is($rpt->{error}, undef, 'error 201211230353-KEVW');
is($rpt->{errortext}, undef, 'errortext 201211230353-KEVW');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KEVW');
is($rpt->{heat_index_c}, '81', 'heat_index_c 201211230353-KEVW');
is($rpt->{heat_index_f}, '179', 'heat_index_f 201211230353-KEVW');
is($rpt->{http}, undef, 'http 201211230353-KEVW');
is($rpt->{intensity}, undef, 'intensity 201211230353-KEVW');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KEVW');
is($rpt->{obs}, '2012/11/23 03:53 KEVW 230353Z AUTO 35004KT 10SM CLR M02/M09 A3047 RMK AO2 SLP333 T10171089 FZRANO ', 'obs 201211230353-KEVW');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KEVW');
is($rpt->{pressure_inhg}, '30.47', 'pressure_inhg 201211230353-KEVW');
is($rpt->{pressure_kgcm}, '1.052177852', 'pressure_kgcm 201211230353-KEVW');
is($rpt->{pressure_lbin}, '14.96546238', 'pressure_lbin 201211230353-KEVW');
is($rpt->{pressure_mb}, '1032', 'pressure_mb 201211230353-KEVW');
is($rpt->{pressure_mmhg}, '774', 'pressure_mmhg 201211230353-KEVW');
is($rpt->{ptemperature}, 'T10171089', 'ptemperature 201211230353-KEVW');
is($rpt->{relative_humidity}, '59', 'relative_humidity 201211230353-KEVW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1033.3','T10171089','FZRANO'], 'remark_arrayref 201211230353-KEVW');
is($rpt->{slp_inhg}, '30.51', 'slp_inhg 201211230353-KEVW');
is($rpt->{slp_kgcm}, '1.053676676', 'slp_kgcm 201211230353-KEVW');
is($rpt->{slp_lbin}, '14.98677654', 'slp_lbin 201211230353-KEVW');
is($rpt->{slp_mb}, '1033', 'slp_mb 201211230353-KEVW');
is($rpt->{slp_mmhg}, '775', 'slp_mmhg 201211230353-KEVW');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KEVW');
is($rpt->{storm}, undef, 'storm 201211230353-KEVW');
is($rpt->{temperature_c}, '-2', 'temperature_c 201211230353-KEVW');
is($rpt->{temperature_f}, '28', 'temperature_f 201211230353-KEVW');
is($rpt->{templateout}, undef, 'templateout 201211230353-KEVW');
is($rpt->{tfile}, undef, 'tfile 201211230353-KEVW');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KEVW');
is($rpt->{time}, '0353', 'time 201211230353-KEVW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KEVW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KEVW');
is($rpt->{windchill_c}, '-5', 'windchill_c 201211230353-KEVW');
is($rpt->{windchill_f}, '23', 'windchill_f 201211230353-KEVW');
is($rpt->{winddir}, '350', 'winddir 201211230353-KEVW');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211230353-KEVW');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KEVW');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KEVW');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KEVW');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211230353-KEVW');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211230353-KEVW');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211230353-KEVW');
