#!perl -T

use strict;
use warnings;

# Test 201211220615-KCNC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:15 KCNC 220615Z AUTO 17012KT 10SM CLR 13/04 A2994 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:15 KCNC 220615Z AUTO 17012KT 10SM CLR 13/04 A2994 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220615-KCNC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220615-KCNC');
is($rpt->{code}, 'KCNC', 'code 201211220615-KCNC');
is($rpt->{conditions1}, undef, 'conditions1 201211220615-KCNC');
is($rpt->{conditions2}, undef, 'conditions2 201211220615-KCNC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220615-KCNC');
is($rpt->{day}, '22', 'day 201211220615-KCNC');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211220615-KCNC');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211220615-KCNC');
is($rpt->{error}, undef, 'error 201211220615-KCNC');
is($rpt->{errortext}, undef, 'errortext 201211220615-KCNC');
is($rpt->{eventbe}, undef, 'eventbe 201211220615-KCNC');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211220615-KCNC');
is($rpt->{heat_index_f}, '89', 'heat_index_f 201211220615-KCNC');
is($rpt->{http}, undef, 'http 201211220615-KCNC');
is($rpt->{intensity}, undef, 'intensity 201211220615-KCNC');
is($rpt->{maintenance}, undef, 'maintenance 201211220615-KCNC');
is($rpt->{obs}, '2012/11/22 06:15 KCNC 220615Z AUTO 17012KT 10SM CLR 13/04 A2994 RMK AO2 ', 'obs 201211220615-KCNC');
is($rpt->{precipslr}, undef, 'precipslr 201211220615-KCNC');
is($rpt->{pressure_inhg}, '29.94', 'pressure_inhg 201211220615-KCNC');
is($rpt->{pressure_kgcm}, '1.033876104', 'pressure_kgcm 201211220615-KCNC');
is($rpt->{pressure_lbin}, '14.70515076', 'pressure_lbin 201211220615-KCNC');
is($rpt->{pressure_mb}, '1014', 'pressure_mb 201211220615-KCNC');
is($rpt->{pressure_mmhg}, '760', 'pressure_mmhg 201211220615-KCNC');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220615-KCNC');
is($rpt->{relative_humidity}, '54', 'relative_humidity 201211220615-KCNC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220615-KCNC');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220615-KCNC');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220615-KCNC');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220615-KCNC');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220615-KCNC');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220615-KCNC');
is($rpt->{station_type}, 'Automated', 'station_type 201211220615-KCNC');
is($rpt->{storm}, undef, 'storm 201211220615-KCNC');
is($rpt->{temperature_c}, '13', 'temperature_c 201211220615-KCNC');
is($rpt->{temperature_f}, '55', 'temperature_f 201211220615-KCNC');
is($rpt->{templateout}, undef, 'templateout 201211220615-KCNC');
is($rpt->{tfile}, undef, 'tfile 201211220615-KCNC');
is($rpt->{thpressure}, undef, 'thpressure 201211220615-KCNC');
is($rpt->{time}, '0615', 'time 201211220615-KCNC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220615-KCNC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220615-KCNC');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220615-KCNC');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220615-KCNC');
is($rpt->{winddir}, '170', 'winddir 201211220615-KCNC');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220615-KCNC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220615-KCNC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220615-KCNC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220615-KCNC');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211220615-KCNC');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211220615-KCNC');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211220615-KCNC');
