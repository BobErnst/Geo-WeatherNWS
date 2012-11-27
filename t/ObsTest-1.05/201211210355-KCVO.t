#!perl -T

use strict;
use warnings;

# Test 201211210355-KCVO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KCVO 210355Z AUTO 12007KT 10SM FEW037 BKN048 OVC110 08/07 A2970 RMK AO1 P0002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KCVO 210355Z AUTO 12007KT 10SM FEW037 BKN048 OVC110 08/07 A2970 RMK AO1 P0002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210355-KCVO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW037','BKN048','OVC110'], 'cloudlevel_arrayref 201211210355-KCVO');
is($rpt->{code}, 'KCVO', 'code 201211210355-KCVO');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KCVO');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KCVO');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210355-KCVO');
is($rpt->{day}, '21', 'day 201211210355-KCVO');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211210355-KCVO');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211210355-KCVO');
is($rpt->{error}, undef, 'error 201211210355-KCVO');
is($rpt->{errortext}, undef, 'errortext 201211210355-KCVO');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KCVO');
is($rpt->{heat_index_c}, '31', 'heat_index_c 201211210355-KCVO');
is($rpt->{heat_index_f}, '89', 'heat_index_f 201211210355-KCVO');
is($rpt->{http}, undef, 'http 201211210355-KCVO');
is($rpt->{intensity}, undef, 'intensity 201211210355-KCVO');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KCVO');
is($rpt->{obs}, '2012/11/21 03:55 KCVO 210355Z AUTO 12007KT 10SM FEW037 BKN048 OVC110 08/07 A2970 RMK AO1 P0002 ', 'obs 201211210355-KCVO');
is($rpt->{precipslr}, 'P0002', 'precipslr 201211210355-KCVO');
is($rpt->{pressure_inhg}, '29.70', 'pressure_inhg 201211210355-KCVO');
is($rpt->{pressure_kgcm}, '1.02558852', 'pressure_kgcm 201211210355-KCVO');
is($rpt->{pressure_lbin}, '14.5872738', 'pressure_lbin 201211210355-KCVO');
is($rpt->{pressure_mb}, '1006', 'pressure_mb 201211210355-KCVO');
is($rpt->{pressure_mmhg}, '754', 'pressure_mmhg 201211210355-KCVO');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KCVO');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KCVO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1','P0002'], 'remark_arrayref 201211210355-KCVO');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KCVO');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KCVO');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KCVO');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KCVO');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KCVO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KCVO');
is($rpt->{storm}, undef, 'storm 201211210355-KCVO');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210355-KCVO');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210355-KCVO');
is($rpt->{templateout}, undef, 'templateout 201211210355-KCVO');
is($rpt->{tfile}, undef, 'tfile 201211210355-KCVO');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KCVO');
is($rpt->{time}, '0355', 'time 201211210355-KCVO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KCVO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KCVO');
is($rpt->{windchill_c}, '6', 'windchill_c 201211210355-KCVO');
is($rpt->{windchill_f}, '42', 'windchill_f 201211210355-KCVO');
is($rpt->{winddir}, '120', 'winddir 201211210355-KCVO');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210355-KCVO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KCVO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KCVO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KCVO');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210355-KCVO');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210355-KCVO');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210355-KCVO');
