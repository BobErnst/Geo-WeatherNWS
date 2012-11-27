#!perl -T

use strict;
use warnings;

# Test 201211230352-KAFN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:52 KAFN 230352Z AUTO 00000KT 8SM CLR M02/M04 A3012 RMK AO2 SLP212 T10221039 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:52 KAFN 230352Z AUTO 00000KT 8SM CLR M02/M04 A3012 RMK AO2 SLP212 T10221039 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230352-KAFN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230352-KAFN');
is($rpt->{code}, 'KAFN', 'code 201211230352-KAFN');
is($rpt->{conditions1}, undef, 'conditions1 201211230352-KAFN');
is($rpt->{conditions2}, undef, 'conditions2 201211230352-KAFN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230352-KAFN');
is($rpt->{day}, '23', 'day 201211230352-KAFN');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211230352-KAFN');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211230352-KAFN');
is($rpt->{error}, undef, 'error 201211230352-KAFN');
is($rpt->{errortext}, undef, 'errortext 201211230352-KAFN');
is($rpt->{eventbe}, undef, 'eventbe 201211230352-KAFN');
is($rpt->{heat_index_c}, '83', 'heat_index_c 201211230352-KAFN');
is($rpt->{heat_index_f}, '181', 'heat_index_f 201211230352-KAFN');
is($rpt->{http}, undef, 'http 201211230352-KAFN');
is($rpt->{intensity}, undef, 'intensity 201211230352-KAFN');
is($rpt->{maintenance}, undef, 'maintenance 201211230352-KAFN');
is($rpt->{obs}, '2012/11/23 03:52 KAFN 230352Z AUTO 00000KT 8SM CLR M02/M04 A3012 RMK AO2 SLP212 T10221039 ', 'obs 201211230352-KAFN');
is($rpt->{precipslr}, undef, 'precipslr 201211230352-KAFN');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211230352-KAFN');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211230352-KAFN');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211230352-KAFN');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211230352-KAFN');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211230352-KAFN');
is($rpt->{ptemperature}, 'T10221039', 'ptemperature 201211230352-KAFN');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211230352-KAFN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.2','T10221039'], 'remark_arrayref 201211230352-KAFN');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211230352-KAFN');
is($rpt->{slp_kgcm}, '1.041338064', 'slp_kgcm 201211230352-KAFN');
is($rpt->{slp_lbin}, '14.81128056', 'slp_lbin 201211230352-KAFN');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211230352-KAFN');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211230352-KAFN');
is($rpt->{station_type}, 'Automated', 'station_type 201211230352-KAFN');
is($rpt->{storm}, undef, 'storm 201211230352-KAFN');
is($rpt->{temperature_c}, '-2', 'temperature_c 201211230352-KAFN');
is($rpt->{temperature_f}, '28', 'temperature_f 201211230352-KAFN');
is($rpt->{templateout}, undef, 'templateout 201211230352-KAFN');
is($rpt->{tfile}, undef, 'tfile 201211230352-KAFN');
is($rpt->{thpressure}, undef, 'thpressure 201211230352-KAFN');
is($rpt->{time}, '0352', 'time 201211230352-KAFN');
is($rpt->{visibility_km}, '13', 'visibility_km 201211230352-KAFN');
is($rpt->{visibility_mi}, '8', 'visibility_mi 201211230352-KAFN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230352-KAFN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230352-KAFN');
is($rpt->{winddir}, '0', 'winddir 201211230352-KAFN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230352-KAFN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230352-KAFN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230352-KAFN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230352-KAFN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230352-KAFN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230352-KAFN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230352-KAFN');
