#!perl -T

use strict;
use warnings;

# Test 201211210315-KCJR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:15 KCJR 210315Z AUTO 00000KT 10SM CLR 03/03 A3015 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:15 KCJR 210315Z AUTO 00000KT 10SM CLR 03/03 A3015 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210315-KCJR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210315-KCJR');
is($rpt->{code}, 'KCJR', 'code 201211210315-KCJR');
is($rpt->{conditions1}, undef, 'conditions1 201211210315-KCJR');
is($rpt->{conditions2}, undef, 'conditions2 201211210315-KCJR');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210315-KCJR');
is($rpt->{day}, '21', 'day 201211210315-KCJR');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211210315-KCJR');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211210315-KCJR');
is($rpt->{error}, undef, 'error 201211210315-KCJR');
is($rpt->{errortext}, undef, 'errortext 201211210315-KCJR');
is($rpt->{eventbe}, undef, 'eventbe 201211210315-KCJR');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210315-KCJR');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210315-KCJR');
is($rpt->{http}, undef, 'http 201211210315-KCJR');
is($rpt->{intensity}, undef, 'intensity 201211210315-KCJR');
is($rpt->{maintenance}, undef, 'maintenance 201211210315-KCJR');
is($rpt->{obs}, '2012/11/21 03:15 KCJR 210315Z AUTO 00000KT 10SM CLR 03/03 A3015 RMK AO2 ', 'obs 201211210315-KCJR');
is($rpt->{precipslr}, undef, 'precipslr 201211210315-KCJR');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210315-KCJR');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210315-KCJR');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210315-KCJR');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210315-KCJR');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210315-KCJR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210315-KCJR');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210315-KCJR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210315-KCJR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210315-KCJR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210315-KCJR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210315-KCJR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210315-KCJR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210315-KCJR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210315-KCJR');
is($rpt->{storm}, undef, 'storm 201211210315-KCJR');
is($rpt->{temperature_c}, '03', 'temperature_c 201211210315-KCJR');
is($rpt->{temperature_f}, '37', 'temperature_f 201211210315-KCJR');
is($rpt->{templateout}, undef, 'templateout 201211210315-KCJR');
is($rpt->{tfile}, undef, 'tfile 201211210315-KCJR');
is($rpt->{thpressure}, undef, 'thpressure 201211210315-KCJR');
is($rpt->{time}, '0315', 'time 201211210315-KCJR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210315-KCJR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210315-KCJR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210315-KCJR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210315-KCJR');
is($rpt->{winddir}, '0', 'winddir 201211210315-KCJR');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210315-KCJR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210315-KCJR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210315-KCJR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210315-KCJR');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210315-KCJR');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210315-KCJR');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210315-KCJR');
