#!perl -T

use strict;
use warnings;

# Test 201211220355-KUNV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KUNV 220355Z AUTO 00000KT 10SM CLR 00/M04 A3022 RMK AO2 T00041036 401171032 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KUNV 220355Z AUTO 00000KT 10SM CLR 00/M04 A3022 RMK AO2 T00041036 401171032 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220355-KUNV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220355-KUNV');
is($rpt->{code}, 'KUNV', 'code 201211220355-KUNV');
is($rpt->{conditions1}, undef, 'conditions1 201211220355-KUNV');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KUNV');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220355-KUNV');
is($rpt->{day}, '22', 'day 201211220355-KUNV');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211220355-KUNV');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211220355-KUNV');
is($rpt->{error}, undef, 'error 201211220355-KUNV');
is($rpt->{errortext}, undef, 'errortext 201211220355-KUNV');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KUNV');
is($rpt->{heat_index_c}, '74', 'heat_index_c 201211220355-KUNV');
is($rpt->{heat_index_f}, '166', 'heat_index_f 201211220355-KUNV');
is($rpt->{http}, undef, 'http 201211220355-KUNV');
is($rpt->{intensity}, undef, 'intensity 201211220355-KUNV');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KUNV');
is($rpt->{obs}, '2012/11/22 03:55 KUNV 220355Z AUTO 00000KT 10SM CLR 00/M04 A3022 RMK AO2 T00041036 401171032 ', 'obs 201211220355-KUNV');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KUNV');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211220355-KUNV');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211220355-KUNV');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211220355-KUNV');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220355-KUNV');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220355-KUNV');
is($rpt->{ptemperature}, 'T00041036', 'ptemperature 201211220355-KUNV');
is($rpt->{relative_humidity}, '74', 'relative_humidity 201211220355-KUNV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00041036','401171032'], 'remark_arrayref 201211220355-KUNV');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KUNV');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KUNV');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KUNV');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KUNV');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KUNV');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KUNV');
is($rpt->{storm}, undef, 'storm 201211220355-KUNV');
is($rpt->{temperature_c}, '00', 'temperature_c 201211220355-KUNV');
is($rpt->{temperature_f}, '32', 'temperature_f 201211220355-KUNV');
is($rpt->{templateout}, undef, 'templateout 201211220355-KUNV');
is($rpt->{tfile}, undef, 'tfile 201211220355-KUNV');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KUNV');
is($rpt->{time}, '0355', 'time 201211220355-KUNV');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220355-KUNV');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220355-KUNV');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220355-KUNV');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220355-KUNV');
is($rpt->{winddir}, '0', 'winddir 201211220355-KUNV');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220355-KUNV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KUNV');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KUNV');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KUNV');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220355-KUNV');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220355-KUNV');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220355-KUNV');
