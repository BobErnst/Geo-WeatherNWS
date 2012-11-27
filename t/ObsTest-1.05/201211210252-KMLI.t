#!perl -T

use strict;
use warnings;

# Test 201211210252-KMLI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:52 KMLI 210252Z 30003KT 1/4SM FG VV001 07/07 A3019 RMK AO2 SLP226 T00670067 51010 RVRNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:52 KMLI 210252Z 30003KT 1/4SM FG VV001 07/07 A3019 RMK AO2 SLP226 T00670067 51010 RVRNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210252-KMLI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['VV001'], 'cloudlevel_arrayref 201211210252-KMLI');
is($rpt->{code}, 'KMLI', 'code 201211210252-KMLI');
is($rpt->{conditions1}, 'Fog', 'conditions1 201211210252-KMLI');
is($rpt->{conditions2}, undef, 'conditions2 201211210252-KMLI');
is($rpt->{conditionstext}, 'Fog', 'conditionstext 201211210252-KMLI');
is($rpt->{day}, '21', 'day 201211210252-KMLI');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211210252-KMLI');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211210252-KMLI');
is($rpt->{error}, undef, 'error 201211210252-KMLI');
is($rpt->{errortext}, undef, 'errortext 201211210252-KMLI');
is($rpt->{eventbe}, undef, 'eventbe 201211210252-KMLI');
is($rpt->{heat_index_c}, '29', 'heat_index_c 201211210252-KMLI');
is($rpt->{heat_index_f}, '84', 'heat_index_f 201211210252-KMLI');
is($rpt->{http}, undef, 'http 201211210252-KMLI');
is($rpt->{intensity}, undef, 'intensity 201211210252-KMLI');
is($rpt->{maintenance}, undef, 'maintenance 201211210252-KMLI');
is($rpt->{obs}, '2012/11/21 02:52 KMLI 210252Z 30003KT 1/4SM FG VV001 07/07 A3019 RMK AO2 SLP226 T00670067 51010 RVRNO ', 'obs 201211210252-KMLI');
is($rpt->{precipslr}, undef, 'precipslr 201211210252-KMLI');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210252-KMLI');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210252-KMLI');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210252-KMLI');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210252-KMLI');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210252-KMLI');
is($rpt->{ptemperature}, 'T00670067', 'ptemperature 201211210252-KMLI');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210252-KMLI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.6','T00670067','51010','RVRNO'], 'remark_arrayref 201211210252-KMLI');
is($rpt->{slp_inhg}, '30.19', 'slp_inhg 201211210252-KMLI');
is($rpt->{slp_kgcm}, '1.042765672', 'slp_kgcm 201211210252-KMLI');
is($rpt->{slp_lbin}, '14.83158588', 'slp_lbin 201211210252-KMLI');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211210252-KMLI');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211210252-KMLI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210252-KMLI');
is($rpt->{storm}, undef, 'storm 201211210252-KMLI');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210252-KMLI');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210252-KMLI');
is($rpt->{templateout}, undef, 'templateout 201211210252-KMLI');
is($rpt->{tfile}, undef, 'tfile 201211210252-KMLI');
is($rpt->{thpressure}, '51010', 'thpressure 201211210252-KMLI');
is($rpt->{time}, '0252', 'time 201211210252-KMLI');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210252-KMLI');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210252-KMLI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210252-KMLI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210252-KMLI');
is($rpt->{winddir}, '300', 'winddir 201211210252-KMLI');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210252-KMLI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210252-KMLI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210252-KMLI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210252-KMLI');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210252-KMLI');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210252-KMLI');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210252-KMLI');
