#!perl -T

use strict;
use warnings;

# Test 201211230351-KCRP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:51 KCRP 230351Z 16011KT 10SM SCT060 23/17 A3012 RMK AO2 SLP197 T02330167 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:51 KCRP 230351Z 16011KT 10SM SCT060 23/17 A3012 RMK AO2 SLP197 T02330167 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211230351-KCRP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT060'], 'cloudlevel_arrayref 201211230351-KCRP');
is($rpt->{code}, 'KCRP', 'code 201211230351-KCRP');
is($rpt->{conditions1}, undef, 'conditions1 201211230351-KCRP');
is($rpt->{conditions2}, undef, 'conditions2 201211230351-KCRP');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211230351-KCRP');
is($rpt->{day}, '23', 'day 201211230351-KCRP');
is($rpt->{dewpoint_c}, '17', 'dewpoint_c 201211230351-KCRP');
is($rpt->{dewpoint_f}, '63', 'dewpoint_f 201211230351-KCRP');
is($rpt->{error}, undef, 'error 201211230351-KCRP');
is($rpt->{errortext}, undef, 'errortext 201211230351-KCRP');
is($rpt->{eventbe}, undef, 'eventbe 201211230351-KCRP');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211230351-KCRP');
is($rpt->{heat_index_f}, '76', 'heat_index_f 201211230351-KCRP');
is($rpt->{http}, undef, 'http 201211230351-KCRP');
is($rpt->{intensity}, undef, 'intensity 201211230351-KCRP');
is($rpt->{maintenance}, '$', 'maintenance 201211230351-KCRP');
is($rpt->{obs}, '2012/11/23 03:51 KCRP 230351Z 16011KT 10SM SCT060 23/17 A3012 RMK AO2 SLP197 T02330167 $ ', 'obs 201211230351-KCRP');
is($rpt->{precipslr}, undef, 'precipslr 201211230351-KCRP');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211230351-KCRP');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211230351-KCRP');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211230351-KCRP');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211230351-KCRP');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211230351-KCRP');
is($rpt->{ptemperature}, 'T02330167', 'ptemperature 201211230351-KCRP');
is($rpt->{relative_humidity}, '69', 'relative_humidity 201211230351-KCRP');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.7','T02330167','$'], 'remark_arrayref 201211230351-KCRP');
is($rpt->{slp_inhg}, '30.11', 'slp_inhg 201211230351-KCRP');
is($rpt->{slp_kgcm}, '1.039808484', 'slp_kgcm 201211230351-KCRP');
is($rpt->{slp_lbin}, '14.78952486', 'slp_lbin 201211230351-KCRP');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211230351-KCRP');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211230351-KCRP');
is($rpt->{station_type}, 'Automated', 'station_type 201211230351-KCRP');
is($rpt->{storm}, undef, 'storm 201211230351-KCRP');
is($rpt->{temperature_c}, '23', 'temperature_c 201211230351-KCRP');
is($rpt->{temperature_f}, '73', 'temperature_f 201211230351-KCRP');
is($rpt->{templateout}, undef, 'templateout 201211230351-KCRP');
is($rpt->{tfile}, undef, 'tfile 201211230351-KCRP');
is($rpt->{thpressure}, undef, 'thpressure 201211230351-KCRP');
is($rpt->{time}, '0351', 'time 201211230351-KCRP');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230351-KCRP');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230351-KCRP');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230351-KCRP');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230351-KCRP');
is($rpt->{winddir}, '160', 'winddir 201211230351-KCRP');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211230351-KCRP');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230351-KCRP');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230351-KCRP');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230351-KCRP');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211230351-KCRP');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211230351-KCRP');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211230351-KCRP');
