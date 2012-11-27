#!perl -T

use strict;
use warnings;

# Test 201211220355-KCIR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:55 KCIR 220355Z AUTO 00000KT 1 3/4SM BR VV007 06/04 A3020 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:55 KCIR 220355Z AUTO 00000KT 1 3/4SM BR VV007 06/04 A3020 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211220355-KCIR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['VV007'], 'cloudlevel_arrayref 201211220355-KCIR');
is($rpt->{code}, 'KCIR', 'code 201211220355-KCIR');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211220355-KCIR');
is($rpt->{conditions2}, undef, 'conditions2 201211220355-KCIR');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211220355-KCIR');
is($rpt->{day}, '22', 'day 201211220355-KCIR');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211220355-KCIR');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211220355-KCIR');
is($rpt->{error}, undef, 'error 201211220355-KCIR');
is($rpt->{errortext}, undef, 'errortext 201211220355-KCIR');
is($rpt->{eventbe}, undef, 'eventbe 201211220355-KCIR');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211220355-KCIR');
is($rpt->{heat_index_f}, '108', 'heat_index_f 201211220355-KCIR');
is($rpt->{http}, undef, 'http 201211220355-KCIR');
is($rpt->{intensity}, undef, 'intensity 201211220355-KCIR');
is($rpt->{maintenance}, undef, 'maintenance 201211220355-KCIR');
is($rpt->{obs}, '2012/11/22 03:55 KCIR 220355Z AUTO 00000KT 1 3/4SM BR VV007 06/04 A3020 RMK AO2 ', 'obs 201211220355-KCIR');
is($rpt->{precipslr}, undef, 'precipslr 201211220355-KCIR');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211220355-KCIR');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211220355-KCIR');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211220355-KCIR');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220355-KCIR');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220355-KCIR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220355-KCIR');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211220355-KCIR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220355-KCIR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220355-KCIR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220355-KCIR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220355-KCIR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220355-KCIR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220355-KCIR');
is($rpt->{station_type}, 'Automated', 'station_type 201211220355-KCIR');
is($rpt->{storm}, undef, 'storm 201211220355-KCIR');
is($rpt->{temperature_c}, '06', 'temperature_c 201211220355-KCIR');
is($rpt->{temperature_f}, '43', 'temperature_f 201211220355-KCIR');
is($rpt->{templateout}, undef, 'templateout 201211220355-KCIR');
is($rpt->{tfile}, undef, 'tfile 201211220355-KCIR');
is($rpt->{thpressure}, undef, 'thpressure 201211220355-KCIR');
is($rpt->{time}, '0355', 'time 201211220355-KCIR');
is($rpt->{visibility_km}, '1', 'visibility_km 201211220355-KCIR');
is($rpt->{visibility_mi}, '1', 'visibility_mi 201211220355-KCIR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220355-KCIR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220355-KCIR');
is($rpt->{winddir}, '0', 'winddir 201211220355-KCIR');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220355-KCIR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220355-KCIR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220355-KCIR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220355-KCIR');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220355-KCIR');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220355-KCIR');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220355-KCIR');
