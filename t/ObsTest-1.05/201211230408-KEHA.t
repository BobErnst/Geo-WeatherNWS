#!perl -T

use strict;
use warnings;

# Test 201211230408-KEHA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:08 KEHA 230408Z AUTO 34007KT 04/M07 RMK AO1 PK WND 09 000 T00391072 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:08 KEHA 230408Z AUTO 34007KT 04/M07 RMK AO1 PK WND 09 000 T00391072 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211230408-KEHA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211230408-KEHA');
is($rpt->{code}, 'KEHA', 'code 201211230408-KEHA');
is($rpt->{conditions1}, undef, 'conditions1 201211230408-KEHA');
is($rpt->{conditions2}, undef, 'conditions2 201211230408-KEHA');
is($rpt->{conditionstext}, undef, 'conditionstext 201211230408-KEHA');
is($rpt->{day}, '23', 'day 201211230408-KEHA');
is($rpt->{dewpoint_c}, '-7', 'dewpoint_c 201211230408-KEHA');
is($rpt->{dewpoint_f}, '19', 'dewpoint_f 201211230408-KEHA');
is($rpt->{error}, undef, 'error 201211230408-KEHA');
is($rpt->{errortext}, undef, 'errortext 201211230408-KEHA');
is($rpt->{eventbe}, undef, 'eventbe 201211230408-KEHA');
is($rpt->{heat_index_c}, '50', 'heat_index_c 201211230408-KEHA');
is($rpt->{heat_index_f}, '122', 'heat_index_f 201211230408-KEHA');
is($rpt->{http}, undef, 'http 201211230408-KEHA');
is($rpt->{intensity}, undef, 'intensity 201211230408-KEHA');
is($rpt->{maintenance}, undef, 'maintenance 201211230408-KEHA');
is($rpt->{obs}, '2012/11/23 04:08 KEHA 230408Z AUTO 34007KT 04/M07 RMK AO1 PK WND 09 000 T00391072 ', 'obs 201211230408-KEHA');
is($rpt->{precipslr}, undef, 'precipslr 201211230408-KEHA');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 201211230408-KEHA');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 201211230408-KEHA');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 201211230408-KEHA');
is($rpt->{pressure_mb}, undef, 'pressure_mb 201211230408-KEHA');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 201211230408-KEHA');
is($rpt->{ptemperature}, 'T00391072', 'ptemperature 201211230408-KEHA');
is($rpt->{relative_humidity}, '44', 'relative_humidity 201211230408-KEHA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1','PK','WND','09','000','T00391072'], 'remark_arrayref 201211230408-KEHA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230408-KEHA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230408-KEHA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230408-KEHA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230408-KEHA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230408-KEHA');
is($rpt->{station_type}, 'Automated', 'station_type 201211230408-KEHA');
is($rpt->{storm}, undef, 'storm 201211230408-KEHA');
is($rpt->{temperature_c}, '04', 'temperature_c 201211230408-KEHA');
is($rpt->{temperature_f}, '39', 'temperature_f 201211230408-KEHA');
is($rpt->{templateout}, undef, 'templateout 201211230408-KEHA');
is($rpt->{tfile}, undef, 'tfile 201211230408-KEHA');
is($rpt->{thpressure}, undef, 'thpressure 201211230408-KEHA');
is($rpt->{time}, '0408', 'time 201211230408-KEHA');
is($rpt->{visibility_km}, undef, 'visibility_km 201211230408-KEHA');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211230408-KEHA');
is($rpt->{windchill_c}, '1', 'windchill_c 201211230408-KEHA');
is($rpt->{windchill_f}, '34', 'windchill_f 201211230408-KEHA');
is($rpt->{winddir}, '340', 'winddir 201211230408-KEHA');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211230408-KEHA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230408-KEHA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230408-KEHA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230408-KEHA');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211230408-KEHA');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211230408-KEHA');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211230408-KEHA');
