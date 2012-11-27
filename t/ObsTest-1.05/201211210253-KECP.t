#!perl -T

use strict;
use warnings;

# Test 201211210253-KECP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KECP 210253Z 33003KT 10SM FEW110 13/12 A3012 RMK AO2 SLP210 60000 T01330117 51010 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KECP 210253Z 33003KT 10SM FEW110 13/12 A3012 RMK AO2 SLP210 60000 T01330117 51010 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211210253-KECP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW110'], 'cloudlevel_arrayref 201211210253-KECP');
is($rpt->{code}, 'KECP', 'code 201211210253-KECP');
is($rpt->{conditions1}, undef, 'conditions1 201211210253-KECP');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KECP');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210253-KECP');
is($rpt->{day}, '21', 'day 201211210253-KECP');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211210253-KECP');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211210253-KECP');
is($rpt->{error}, undef, 'error 201211210253-KECP');
is($rpt->{errortext}, undef, 'errortext 201211210253-KECP');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KECP');
is($rpt->{heat_index_c}, '19', 'heat_index_c 201211210253-KECP');
is($rpt->{heat_index_f}, '67', 'heat_index_f 201211210253-KECP');
is($rpt->{http}, undef, 'http 201211210253-KECP');
is($rpt->{intensity}, undef, 'intensity 201211210253-KECP');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KECP');
is($rpt->{obs}, '2012/11/21 02:53 KECP 210253Z 33003KT 10SM FEW110 13/12 A3012 RMK AO2 SLP210 60000 T01330117 51010 ', 'obs 201211210253-KECP');
is($rpt->{precipslr}, undef, 'precipslr 201211210253-KECP');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210253-KECP');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210253-KECP');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210253-KECP');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210253-KECP');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210253-KECP');
is($rpt->{ptemperature}, 'T01330117', 'ptemperature 201211210253-KECP');
is($rpt->{relative_humidity}, '94', 'relative_humidity 201211210253-KECP');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1021,'60000','T01330117','51010'], 'remark_arrayref 201211210253-KECP');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210253-KECP');
is($rpt->{slp_kgcm}, '1.04113412', 'slp_kgcm 201211210253-KECP');
is($rpt->{slp_lbin}, '14.8083798', 'slp_lbin 201211210253-KECP');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210253-KECP');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210253-KECP');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KECP');
is($rpt->{storm}, undef, 'storm 201211210253-KECP');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210253-KECP');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210253-KECP');
is($rpt->{templateout}, undef, 'templateout 201211210253-KECP');
is($rpt->{tfile}, undef, 'tfile 201211210253-KECP');
is($rpt->{thpressure}, '51010', 'thpressure 201211210253-KECP');
is($rpt->{time}, '0253', 'time 201211210253-KECP');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KECP');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KECP');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KECP');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KECP');
is($rpt->{winddir}, '330', 'winddir 201211210253-KECP');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210253-KECP');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KECP');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KECP');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KECP');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210253-KECP');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210253-KECP');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210253-KECP');
