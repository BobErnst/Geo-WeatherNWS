#!perl -T

use strict;
use warnings;

# Test 201211210355-KPWT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KPWT 210355Z AUTO 18006KT 10SM FEW022 BKN031 OVC036 07/04 A2968 RMK AO1 P0009 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KPWT 210355Z AUTO 18006KT 10SM FEW022 BKN031 OVC036 07/04 A2968 RMK AO1 P0009 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210355-KPWT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW022','BKN031','OVC036'], 'cloudlevel_arrayref 201211210355-KPWT');
is($rpt->{code}, 'KPWT', 'code 201211210355-KPWT');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KPWT');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KPWT');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210355-KPWT');
is($rpt->{day}, '21', 'day 201211210355-KPWT');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210355-KPWT');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210355-KPWT');
is($rpt->{error}, undef, 'error 201211210355-KPWT');
is($rpt->{errortext}, undef, 'errortext 201211210355-KPWT');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KPWT');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211210355-KPWT');
is($rpt->{heat_index_f}, '107', 'heat_index_f 201211210355-KPWT');
is($rpt->{http}, undef, 'http 201211210355-KPWT');
is($rpt->{intensity}, undef, 'intensity 201211210355-KPWT');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KPWT');
is($rpt->{obs}, '2012/11/21 03:55 KPWT 210355Z AUTO 18006KT 10SM FEW022 BKN031 OVC036 07/04 A2968 RMK AO1 P0009 ', 'obs 201211210355-KPWT');
is($rpt->{precipslr}, 'P0009', 'precipslr 201211210355-KPWT');
is($rpt->{pressure_inhg}, '29.68', 'pressure_inhg 201211210355-KPWT');
is($rpt->{pressure_kgcm}, '1.024897888', 'pressure_kgcm 201211210355-KPWT');
is($rpt->{pressure_lbin}, '14.57745072', 'pressure_lbin 201211210355-KPWT');
is($rpt->{pressure_mb}, '1005', 'pressure_mb 201211210355-KPWT');
is($rpt->{pressure_mmhg}, '754', 'pressure_mmhg 201211210355-KPWT');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KPWT');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210355-KPWT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1','P0009'], 'remark_arrayref 201211210355-KPWT');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KPWT');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KPWT');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KPWT');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KPWT');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KPWT');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KPWT');
is($rpt->{storm}, undef, 'storm 201211210355-KPWT');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210355-KPWT');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210355-KPWT');
is($rpt->{templateout}, undef, 'templateout 201211210355-KPWT');
is($rpt->{tfile}, undef, 'tfile 201211210355-KPWT');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KPWT');
is($rpt->{time}, '0355', 'time 201211210355-KPWT');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KPWT');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KPWT');
is($rpt->{windchill_c}, '5', 'windchill_c 201211210355-KPWT');
is($rpt->{windchill_f}, '41', 'windchill_f 201211210355-KPWT');
is($rpt->{winddir}, '180', 'winddir 201211210355-KPWT');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210355-KPWT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KPWT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KPWT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KPWT');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211210355-KPWT');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211210355-KPWT');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211210355-KPWT');
