#!perl -T

use strict;
use warnings;

# Test 201211220356-KSJX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:56 KSJX 220356Z AUTO 22011G18KT 7SM CLR 10/06 A2995 RMK AO2 T00960057 401130020 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:56 KSJX 220356Z AUTO 22011G18KT 7SM CLR 10/06 A2995 RMK AO2 T00960057 401130020 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220356-KSJX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220356-KSJX');
is($rpt->{code}, 'KSJX', 'code 201211220356-KSJX');
is($rpt->{conditions1}, undef, 'conditions1 201211220356-KSJX');
is($rpt->{conditions2}, undef, 'conditions2 201211220356-KSJX');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220356-KSJX');
is($rpt->{day}, '22', 'day 201211220356-KSJX');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211220356-KSJX');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211220356-KSJX');
is($rpt->{error}, undef, 'error 201211220356-KSJX');
is($rpt->{errortext}, undef, 'errortext 201211220356-KSJX');
is($rpt->{eventbe}, undef, 'eventbe 201211220356-KSJX');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211220356-KSJX');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211220356-KSJX');
is($rpt->{http}, undef, 'http 201211220356-KSJX');
is($rpt->{intensity}, undef, 'intensity 201211220356-KSJX');
is($rpt->{maintenance}, undef, 'maintenance 201211220356-KSJX');
is($rpt->{obs}, '2012/11/22 03:56 KSJX 220356Z AUTO 22011G18KT 7SM CLR 10/06 A2995 RMK AO2 T00960057 401130020 ', 'obs 201211220356-KSJX');
is($rpt->{precipslr}, undef, 'precipslr 201211220356-KSJX');
is($rpt->{pressure_inhg}, '29.95', 'pressure_inhg 201211220356-KSJX');
is($rpt->{pressure_kgcm}, '1.03422142', 'pressure_kgcm 201211220356-KSJX');
is($rpt->{pressure_lbin}, '14.7100623', 'pressure_lbin 201211220356-KSJX');
is($rpt->{pressure_mb}, '1014', 'pressure_mb 201211220356-KSJX');
is($rpt->{pressure_mmhg}, '761', 'pressure_mmhg 201211220356-KSJX');
is($rpt->{ptemperature}, 'T00960057', 'ptemperature 201211220356-KSJX');
is($rpt->{relative_humidity}, '76', 'relative_humidity 201211220356-KSJX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00960057','401130020'], 'remark_arrayref 201211220356-KSJX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220356-KSJX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220356-KSJX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220356-KSJX');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220356-KSJX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220356-KSJX');
is($rpt->{station_type}, 'Automated', 'station_type 201211220356-KSJX');
is($rpt->{storm}, undef, 'storm 201211220356-KSJX');
is($rpt->{temperature_c}, '10', 'temperature_c 201211220356-KSJX');
is($rpt->{temperature_f}, '50', 'temperature_f 201211220356-KSJX');
is($rpt->{templateout}, undef, 'templateout 201211220356-KSJX');
is($rpt->{tfile}, undef, 'tfile 201211220356-KSJX');
is($rpt->{thpressure}, undef, 'thpressure 201211220356-KSJX');
is($rpt->{time}, '0356', 'time 201211220356-KSJX');
is($rpt->{visibility_km}, '11', 'visibility_km 201211220356-KSJX');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211220356-KSJX');
is($rpt->{windchill_c}, '7', 'windchill_c 201211220356-KSJX');
is($rpt->{windchill_f}, '45', 'windchill_f 201211220356-KSJX');
is($rpt->{winddir}, '220', 'winddir 201211220356-KSJX');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211220356-KSJX');
is($rpt->{windgustkmh}, '33', 'windgustkmh 201211220356-KSJX');
is($rpt->{windgustkts}, '18', 'windgustkts 201211220356-KSJX');
is($rpt->{windgustmph}, '21', 'windgustmph 201211220356-KSJX');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211220356-KSJX');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211220356-KSJX');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211220356-KSJX');
