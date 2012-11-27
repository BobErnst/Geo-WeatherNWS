#!perl -T

use strict;
use warnings;

# Test 201211250315-KAIZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/25 03:15 KAIZ 250315Z AUTO 19007KT 10SM CLR 03/M07 A3003 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/25 03:15 KAIZ 250315Z AUTO 19007KT 10SM CLR 03/M07 A3003 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211250315-KAIZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211250315-KAIZ');
is($rpt->{code}, 'KAIZ', 'code 201211250315-KAIZ');
is($rpt->{conditions1}, undef, 'conditions1 201211250315-KAIZ');
is($rpt->{conditions2}, undef, 'conditions2 201211250315-KAIZ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211250315-KAIZ');
is($rpt->{day}, '25', 'day 201211250315-KAIZ');
is($rpt->{dewpoint_c}, '-7', 'dewpoint_c 201211250315-KAIZ');
is($rpt->{dewpoint_f}, '19', 'dewpoint_f 201211250315-KAIZ');
is($rpt->{error}, undef, 'error 201211250315-KAIZ');
is($rpt->{errortext}, undef, 'errortext 201211250315-KAIZ');
is($rpt->{eventbe}, undef, 'eventbe 201211250315-KAIZ');
is($rpt->{heat_index_c}, '55', 'heat_index_c 201211250315-KAIZ');
is($rpt->{heat_index_f}, '131', 'heat_index_f 201211250315-KAIZ');
is($rpt->{http}, undef, 'http 201211250315-KAIZ');
is($rpt->{intensity}, undef, 'intensity 201211250315-KAIZ');
is($rpt->{maintenance}, undef, 'maintenance 201211250315-KAIZ');
is($rpt->{obs}, '2012/11/25 03:15 KAIZ 250315Z AUTO 19007KT 10SM CLR 03/M07 A3003 RMK AO1 ', 'obs 201211250315-KAIZ');
is($rpt->{precipslr}, undef, 'precipslr 201211250315-KAIZ');
is($rpt->{pressure_inhg}, '30.03', 'pressure_inhg 201211250315-KAIZ');
is($rpt->{pressure_kgcm}, '1.036983948', 'pressure_kgcm 201211250315-KAIZ');
is($rpt->{pressure_lbin}, '14.74935462', 'pressure_lbin 201211250315-KAIZ');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211250315-KAIZ');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211250315-KAIZ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211250315-KAIZ');
is($rpt->{relative_humidity}, '48', 'relative_humidity 201211250315-KAIZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211250315-KAIZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211250315-KAIZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211250315-KAIZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211250315-KAIZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211250315-KAIZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211250315-KAIZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211250315-KAIZ');
is($rpt->{storm}, undef, 'storm 201211250315-KAIZ');
is($rpt->{temperature_c}, '03', 'temperature_c 201211250315-KAIZ');
is($rpt->{temperature_f}, '37', 'temperature_f 201211250315-KAIZ');
is($rpt->{templateout}, undef, 'templateout 201211250315-KAIZ');
is($rpt->{tfile}, undef, 'tfile 201211250315-KAIZ');
is($rpt->{thpressure}, undef, 'thpressure 201211250315-KAIZ');
is($rpt->{time}, '0315', 'time 201211250315-KAIZ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211250315-KAIZ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211250315-KAIZ');
is($rpt->{windchill_c}, '-0', 'windchill_c 201211250315-KAIZ');
is($rpt->{windchill_f}, '31', 'windchill_f 201211250315-KAIZ');
is($rpt->{winddir}, '190', 'winddir 201211250315-KAIZ');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211250315-KAIZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211250315-KAIZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211250315-KAIZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211250315-KAIZ');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211250315-KAIZ');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211250315-KAIZ');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211250315-KAIZ');
