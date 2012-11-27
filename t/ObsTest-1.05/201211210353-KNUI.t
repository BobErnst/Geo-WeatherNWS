#!perl -T

use strict;
use warnings;

# Test 201211210353-KNUI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KNUI 210353Z AUTO 00000KT CLR A3012 RMK AO2 SLP200 $  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KNUI 210353Z AUTO 00000KT CLR A3012 RMK AO2 SLP200 $  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KNUI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KNUI');
is($rpt->{code}, 'KNUI', 'code 201211210353-KNUI');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KNUI');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KNUI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KNUI');
is($rpt->{day}, '21', 'day 201211210353-KNUI');
is($rpt->{dewpoint_c}, undef, 'dewpoint_c 201211210353-KNUI');
is($rpt->{dewpoint_f}, undef, 'dewpoint_f 201211210353-KNUI');
is($rpt->{error}, undef, 'error 201211210353-KNUI');
is($rpt->{errortext}, undef, 'errortext 201211210353-KNUI');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KNUI');
is($rpt->{heat_index_c}, undef, 'heat_index_c 201211210353-KNUI');
is($rpt->{heat_index_f}, undef, 'heat_index_f 201211210353-KNUI');
is($rpt->{http}, undef, 'http 201211210353-KNUI');
is($rpt->{intensity}, undef, 'intensity 201211210353-KNUI');
is($rpt->{maintenance}, '$', 'maintenance 201211210353-KNUI');
is($rpt->{obs}, '2012/11/21 03:53 KNUI 210353Z AUTO 00000KT CLR A3012 RMK AO2 SLP200 $  ', 'obs 201211210353-KNUI');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KNUI');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210353-KNUI');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210353-KNUI');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210353-KNUI');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210353-KNUI');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210353-KNUI');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210353-KNUI');
is($rpt->{relative_humidity}, undef, 'relative_humidity 201211210353-KNUI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1020,'$'], 'remark_arrayref 201211210353-KNUI');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210353-KNUI');
is($rpt->{slp_kgcm}, '1.0401144', 'slp_kgcm 201211210353-KNUI');
is($rpt->{slp_lbin}, '14.793876', 'slp_lbin 201211210353-KNUI');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210353-KNUI');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210353-KNUI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KNUI');
is($rpt->{storm}, undef, 'storm 201211210353-KNUI');
is($rpt->{temperature_c}, undef, 'temperature_c 201211210353-KNUI');
is($rpt->{temperature_f}, undef, 'temperature_f 201211210353-KNUI');
is($rpt->{templateout}, undef, 'templateout 201211210353-KNUI');
is($rpt->{tfile}, undef, 'tfile 201211210353-KNUI');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KNUI');
is($rpt->{time}, '0353', 'time 201211210353-KNUI');
is($rpt->{visibility_km}, undef, 'visibility_km 201211210353-KNUI');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211210353-KNUI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KNUI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KNUI');
is($rpt->{winddir}, '0', 'winddir 201211210353-KNUI');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KNUI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KNUI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KNUI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KNUI');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KNUI');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KNUI');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KNUI');
