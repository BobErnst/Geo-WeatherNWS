#!perl -T

use strict;
use warnings;

# Test 201211220355-KHNZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KHNZ 220355Z AUTO 00000KT 10SM CLR 04/M01 A3019 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KHNZ 220355Z AUTO 00000KT 10SM CLR 04/M01 A3019 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220355-KHNZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220355-KHNZ');
is($rpt->{code}, 'KHNZ', 'code 201211220355-KHNZ');
is($rpt->{conditions1}, undef, 'conditions1 201211220355-KHNZ');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KHNZ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220355-KHNZ');
is($rpt->{day}, '22', 'day 201211220355-KHNZ');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211220355-KHNZ');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211220355-KHNZ');
is($rpt->{error}, undef, 'error 201211220355-KHNZ');
is($rpt->{errortext}, undef, 'errortext 201211220355-KHNZ');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KHNZ');
is($rpt->{heat_index_c}, '56', 'heat_index_c 201211220355-KHNZ');
is($rpt->{heat_index_f}, '133', 'heat_index_f 201211220355-KHNZ');
is($rpt->{http}, undef, 'http 201211220355-KHNZ');
is($rpt->{intensity}, undef, 'intensity 201211220355-KHNZ');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KHNZ');
is($rpt->{obs}, '2012/11/22 03:55 KHNZ 220355Z AUTO 00000KT 10SM CLR 04/M01 A3019 RMK AO2 ', 'obs 201211220355-KHNZ');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KHNZ');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211220355-KHNZ');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211220355-KHNZ');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211220355-KHNZ');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211220355-KHNZ');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220355-KHNZ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220355-KHNZ');
is($rpt->{relative_humidity}, '70', 'relative_humidity 201211220355-KHNZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220355-KHNZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KHNZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KHNZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KHNZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KHNZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KHNZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KHNZ');
is($rpt->{storm}, undef, 'storm 201211220355-KHNZ');
is($rpt->{temperature_c}, '04', 'temperature_c 201211220355-KHNZ');
is($rpt->{temperature_f}, '39', 'temperature_f 201211220355-KHNZ');
is($rpt->{templateout}, undef, 'templateout 201211220355-KHNZ');
is($rpt->{tfile}, undef, 'tfile 201211220355-KHNZ');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KHNZ');
is($rpt->{time}, '0355', 'time 201211220355-KHNZ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220355-KHNZ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220355-KHNZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220355-KHNZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220355-KHNZ');
is($rpt->{winddir}, '0', 'winddir 201211220355-KHNZ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220355-KHNZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KHNZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KHNZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KHNZ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220355-KHNZ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220355-KHNZ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220355-KHNZ');
