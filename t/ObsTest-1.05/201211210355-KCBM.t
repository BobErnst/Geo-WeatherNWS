#!perl -T

use strict;
use warnings;

# Test 201211210355-KCBM
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KCBM 210355Z AUTO 00000KT 10SM CLR 07/06 A3014 RMK AO2 SLP210 T00700056 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KCBM 210355Z AUTO 00000KT 10SM CLR 07/06 A3014 RMK AO2 SLP210 T00700056 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KCBM');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KCBM');
is($rpt->{code}, 'KCBM', 'code 201211210355-KCBM');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KCBM');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KCBM');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KCBM');
is($rpt->{day}, '21', 'day 201211210355-KCBM');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210355-KCBM');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210355-KCBM');
is($rpt->{error}, undef, 'error 201211210355-KCBM');
is($rpt->{errortext}, undef, 'errortext 201211210355-KCBM');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KCBM');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210355-KCBM');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211210355-KCBM');
is($rpt->{http}, undef, 'http 201211210355-KCBM');
is($rpt->{intensity}, undef, 'intensity 201211210355-KCBM');
is($rpt->{maintenance}, '$', 'maintenance 201211210355-KCBM');
is($rpt->{obs}, '2012/11/21 03:55 KCBM 210355Z AUTO 00000KT 10SM CLR 07/06 A3014 RMK AO2 SLP210 T00700056 $ ', 'obs 201211210355-KCBM');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KCBM');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210355-KCBM');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210355-KCBM');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210355-KCBM');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210355-KCBM');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-KCBM');
is($rpt->{ptemperature}, 'T00700056', 'ptemperature 201211210355-KCBM');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KCBM');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1021,'T00700056','$'], 'remark_arrayref 201211210355-KCBM');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210355-KCBM');
is($rpt->{slp_kgcm}, '1.04113412', 'slp_kgcm 201211210355-KCBM');
is($rpt->{slp_lbin}, '14.8083798', 'slp_lbin 201211210355-KCBM');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210355-KCBM');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210355-KCBM');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KCBM');
is($rpt->{storm}, undef, 'storm 201211210355-KCBM');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210355-KCBM');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210355-KCBM');
is($rpt->{templateout}, undef, 'templateout 201211210355-KCBM');
is($rpt->{tfile}, undef, 'tfile 201211210355-KCBM');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KCBM');
is($rpt->{time}, '0355', 'time 201211210355-KCBM');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KCBM');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KCBM');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KCBM');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KCBM');
is($rpt->{winddir}, '0', 'winddir 201211210355-KCBM');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KCBM');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KCBM');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KCBM');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KCBM');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KCBM');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KCBM');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KCBM');
