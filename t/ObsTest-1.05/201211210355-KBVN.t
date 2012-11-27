#!perl -T

use strict;
use warnings;

# Test 201211210355-KBVN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KBVN 210355Z AUTO 13004KT 10SM CLR 08/01 A3008 RMK AO2 T00800008 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KBVN 210355Z AUTO 13004KT 10SM CLR 08/01 A3008 RMK AO2 T00800008 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KBVN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KBVN');
is($rpt->{code}, 'KBVN', 'code 201211210355-KBVN');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KBVN');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KBVN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KBVN');
is($rpt->{day}, '21', 'day 201211210355-KBVN');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210355-KBVN');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210355-KBVN');
is($rpt->{error}, undef, 'error 201211210355-KBVN');
is($rpt->{errortext}, undef, 'errortext 201211210355-KBVN');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KBVN');
is($rpt->{heat_index_c}, '43', 'heat_index_c 201211210355-KBVN');
is($rpt->{heat_index_f}, '109', 'heat_index_f 201211210355-KBVN');
is($rpt->{http}, undef, 'http 201211210355-KBVN');
is($rpt->{intensity}, undef, 'intensity 201211210355-KBVN');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KBVN');
is($rpt->{obs}, '2012/11/21 03:55 KBVN 210355Z AUTO 13004KT 10SM CLR 08/01 A3008 RMK AO2 T00800008 ', 'obs 201211210355-KBVN');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KBVN');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211210355-KBVN');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211210355-KBVN');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211210355-KBVN');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210355-KBVN');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210355-KBVN');
is($rpt->{ptemperature}, 'T00800008', 'ptemperature 201211210355-KBVN');
is($rpt->{relative_humidity}, '61', 'relative_humidity 201211210355-KBVN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00800008'], 'remark_arrayref 201211210355-KBVN');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KBVN');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KBVN');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KBVN');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KBVN');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KBVN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KBVN');
is($rpt->{storm}, undef, 'storm 201211210355-KBVN');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210355-KBVN');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210355-KBVN');
is($rpt->{templateout}, undef, 'templateout 201211210355-KBVN');
is($rpt->{tfile}, undef, 'tfile 201211210355-KBVN');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KBVN');
is($rpt->{time}, '0355', 'time 201211210355-KBVN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KBVN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KBVN');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210355-KBVN');
is($rpt->{windchill_f}, '44', 'windchill_f 201211210355-KBVN');
is($rpt->{winddir}, '130', 'winddir 201211210355-KBVN');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210355-KBVN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KBVN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KBVN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KBVN');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210355-KBVN');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210355-KBVN');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210355-KBVN');
