#!perl -T

use strict;
use warnings;

# Test 201211230352-KREO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:52 KREO 230352Z AUTO 05003KT M01/M03 A3038 RMK AO2 SLP321 T10061033 PWINO FZRANO TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:52 KREO 230352Z AUTO 05003KT M01/M03 A3038 RMK AO2 SLP321 T10061033 PWINO FZRANO TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211230352-KREO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211230352-KREO');
is($rpt->{code}, 'KREO', 'code 201211230352-KREO');
is($rpt->{conditions1}, undef, 'conditions1 201211230352-KREO');
is($rpt->{conditions2}, undef, 'conditions2 201211230352-KREO');
is($rpt->{conditionstext}, undef, 'conditionstext 201211230352-KREO');
is($rpt->{day}, '23', 'day 201211230352-KREO');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211230352-KREO');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211230352-KREO');
is($rpt->{error}, undef, 'error 201211230352-KREO');
is($rpt->{errortext}, undef, 'errortext 201211230352-KREO');
is($rpt->{eventbe}, undef, 'eventbe 201211230352-KREO');
is($rpt->{heat_index_c}, '77', 'heat_index_c 201211230352-KREO');
is($rpt->{heat_index_f}, '170', 'heat_index_f 201211230352-KREO');
is($rpt->{http}, undef, 'http 201211230352-KREO');
is($rpt->{intensity}, undef, 'intensity 201211230352-KREO');
is($rpt->{maintenance}, undef, 'maintenance 201211230352-KREO');
is($rpt->{obs}, '2012/11/23 03:52 KREO 230352Z AUTO 05003KT M01/M03 A3038 RMK AO2 SLP321 T10061033 PWINO FZRANO TSNO  ', 'obs 201211230352-KREO');
is($rpt->{precipslr}, undef, 'precipslr 201211230352-KREO');
is($rpt->{pressure_inhg}, '30.38', 'pressure_inhg 201211230352-KREO');
is($rpt->{pressure_kgcm}, '1.049070008', 'pressure_kgcm 201211230352-KREO');
is($rpt->{pressure_lbin}, '14.92125852', 'pressure_lbin 201211230352-KREO');
is($rpt->{pressure_mb}, '1029', 'pressure_mb 201211230352-KREO');
is($rpt->{pressure_mmhg}, '772', 'pressure_mmhg 201211230352-KREO');
is($rpt->{ptemperature}, 'T10061033', 'ptemperature 201211230352-KREO');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211230352-KREO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1032.1','T10061033','PWINO','FZRANO','TSNO'], 'remark_arrayref 201211230352-KREO');
is($rpt->{slp_inhg}, '30.47', 'slp_inhg 201211230352-KREO');
is($rpt->{slp_kgcm}, '1.052453012', 'slp_kgcm 201211230352-KREO');
is($rpt->{slp_lbin}, '14.96937198', 'slp_lbin 201211230352-KREO');
is($rpt->{slp_mb}, '1032', 'slp_mb 201211230352-KREO');
is($rpt->{slp_mmhg}, '774', 'slp_mmhg 201211230352-KREO');
is($rpt->{station_type}, 'Automated', 'station_type 201211230352-KREO');
is($rpt->{storm}, 'TSNO', 'storm 201211230352-KREO');
is($rpt->{temperature_c}, '-1', 'temperature_c 201211230352-KREO');
is($rpt->{temperature_f}, '30', 'temperature_f 201211230352-KREO');
is($rpt->{templateout}, undef, 'templateout 201211230352-KREO');
is($rpt->{tfile}, undef, 'tfile 201211230352-KREO');
is($rpt->{thpressure}, undef, 'thpressure 201211230352-KREO');
is($rpt->{time}, '0352', 'time 201211230352-KREO');
is($rpt->{visibility_km}, undef, 'visibility_km 201211230352-KREO');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211230352-KREO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230352-KREO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230352-KREO');
is($rpt->{winddir}, '50', 'winddir 201211230352-KREO');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211230352-KREO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230352-KREO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230352-KREO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230352-KREO');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211230352-KREO');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211230352-KREO');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211230352-KREO');
