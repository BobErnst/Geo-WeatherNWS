#!perl -T

use strict;
use warnings;

# Test 201211230415-KRDK
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KRDK 230415Z AUTO 30006KT 10SM CLR 06/01 A3022 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KRDK 230415Z AUTO 30006KT 10SM CLR 06/01 A3022 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230415-KRDK');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230415-KRDK');
is($rpt->{code}, 'KRDK', 'code 201211230415-KRDK');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KRDK');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KRDK');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230415-KRDK');
is($rpt->{day}, '23', 'day 201211230415-KRDK');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211230415-KRDK');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211230415-KRDK');
is($rpt->{error}, undef, 'error 201211230415-KRDK');
is($rpt->{errortext}, undef, 'errortext 201211230415-KRDK');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KRDK');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201211230415-KRDK');
is($rpt->{heat_index_f}, '119', 'heat_index_f 201211230415-KRDK');
is($rpt->{http}, undef, 'http 201211230415-KRDK');
is($rpt->{intensity}, undef, 'intensity 201211230415-KRDK');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KRDK');
is($rpt->{obs}, '2012/11/23 04:15 KRDK 230415Z AUTO 30006KT 10SM CLR 06/01 A3022 RMK AO2 ', 'obs 201211230415-KRDK');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KRDK');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211230415-KRDK');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211230415-KRDK');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211230415-KRDK');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211230415-KRDK');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211230415-KRDK');
is($rpt->{ptemperature}, undef, 'ptemperature 201211230415-KRDK');
is($rpt->{relative_humidity}, '70', 'relative_humidity 201211230415-KRDK');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211230415-KRDK');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KRDK');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KRDK');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KRDK');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KRDK');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KRDK');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KRDK');
is($rpt->{storm}, undef, 'storm 201211230415-KRDK');
is($rpt->{temperature_c}, '06', 'temperature_c 201211230415-KRDK');
is($rpt->{temperature_f}, '43', 'temperature_f 201211230415-KRDK');
is($rpt->{templateout}, undef, 'templateout 201211230415-KRDK');
is($rpt->{tfile}, undef, 'tfile 201211230415-KRDK');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KRDK');
is($rpt->{time}, '0415', 'time 201211230415-KRDK');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KRDK');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KRDK');
is($rpt->{windchill_c}, '4', 'windchill_c 201211230415-KRDK');
is($rpt->{windchill_f}, '39', 'windchill_f 201211230415-KRDK');
is($rpt->{winddir}, '300', 'winddir 201211230415-KRDK');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211230415-KRDK');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KRDK');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KRDK');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KRDK');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211230415-KRDK');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211230415-KRDK');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211230415-KRDK');
