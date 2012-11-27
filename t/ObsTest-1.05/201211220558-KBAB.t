#!perl -T

use strict;
use warnings;

# Test 201211220558-KBAB
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:58 KBAB 220558Z AUTO 02004KT 10SM CLR 11/11 A3019 RMK AO2 SLPNO 60000 T01140109 10155 20114 51007 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:58 KBAB 220558Z AUTO 02004KT 10SM CLR 11/11 A3019 RMK AO2 SLPNO 60000 T01140109 10155 20114 51007 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220558-KBAB');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220558-KBAB');
is($rpt->{code}, 'KBAB', 'code 201211220558-KBAB');
is($rpt->{conditions1}, undef, 'conditions1 201211220558-KBAB');
is($rpt->{conditions2}, undef, 'conditions2 201211220558-KBAB');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220558-KBAB');
is($rpt->{day}, '22', 'day 201211220558-KBAB');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211220558-KBAB');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211220558-KBAB');
is($rpt->{error}, undef, 'error 201211220558-KBAB');
is($rpt->{errortext}, undef, 'errortext 201211220558-KBAB');
is($rpt->{eventbe}, undef, 'eventbe 201211220558-KBAB');
is($rpt->{heat_index_c}, '19', 'heat_index_c 201211220558-KBAB');
is($rpt->{heat_index_f}, '65', 'heat_index_f 201211220558-KBAB');
is($rpt->{http}, undef, 'http 201211220558-KBAB');
is($rpt->{intensity}, undef, 'intensity 201211220558-KBAB');
is($rpt->{maintenance}, '$', 'maintenance 201211220558-KBAB');
is($rpt->{obs}, '2012/11/22 05:58 KBAB 220558Z AUTO 02004KT 10SM CLR 11/11 A3019 RMK AO2 SLPNO 60000 T01140109 10155 20114 51007 $ ', 'obs 201211220558-KBAB');
is($rpt->{precipslr}, undef, 'precipslr 201211220558-KBAB');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211220558-KBAB');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211220558-KBAB');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211220558-KBAB');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211220558-KBAB');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220558-KBAB');
is($rpt->{ptemperature}, 'T01140109', 'ptemperature 201211220558-KBAB');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211220558-KBAB');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1000,'60000','T01140109','10155','20114','51007','$'], 'remark_arrayref 201211220558-KBAB');
is($rpt->{slp_inhg}, '29.53', 'slp_inhg 201211220558-KBAB');
is($rpt->{slp_kgcm}, '1.01972', 'slp_kgcm 201211220558-KBAB');
is($rpt->{slp_lbin}, '14.5038', 'slp_lbin 201211220558-KBAB');
is($rpt->{slp_mb}, '1000', 'slp_mb 201211220558-KBAB');
is($rpt->{slp_mmhg}, '750', 'slp_mmhg 201211220558-KBAB');
is($rpt->{station_type}, 'Automated', 'station_type 201211220558-KBAB');
is($rpt->{storm}, undef, 'storm 201211220558-KBAB');
is($rpt->{temperature_c}, '11', 'temperature_c 201211220558-KBAB');
is($rpt->{temperature_f}, '52', 'temperature_f 201211220558-KBAB');
is($rpt->{templateout}, undef, 'templateout 201211220558-KBAB');
is($rpt->{tfile}, undef, 'tfile 201211220558-KBAB');
is($rpt->{thpressure}, '51007', 'thpressure 201211220558-KBAB');
is($rpt->{time}, '0558', 'time 201211220558-KBAB');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220558-KBAB');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220558-KBAB');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220558-KBAB');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220558-KBAB');
is($rpt->{winddir}, '20', 'winddir 201211220558-KBAB');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211220558-KBAB');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220558-KBAB');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220558-KBAB');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220558-KBAB');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220558-KBAB');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220558-KBAB');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220558-KBAB');
