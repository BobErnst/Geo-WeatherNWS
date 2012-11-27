#!perl -T

use strict;
use warnings;

# Test 201211210353-KPUW
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KPUW 210353Z AUTO 26004KT 10SM SCT024 BKN032 OVC060 08/06 A2978 RMK AO2 RAE18 SLP090 P0001 T00830061 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KPUW 210353Z AUTO 26004KT 10SM SCT024 BKN032 OVC060 08/06 A2978 RMK AO2 RAE18 SLP090 P0001 T00830061 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210353-KPUW');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT024','BKN032','OVC060'], 'cloudlevel_arrayref 201211210353-KPUW');
is($rpt->{code}, 'KPUW', 'code 201211210353-KPUW');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KPUW');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KPUW');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211210353-KPUW');
is($rpt->{day}, '21', 'day 201211210353-KPUW');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211210353-KPUW');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211210353-KPUW');
is($rpt->{error}, undef, 'error 201211210353-KPUW');
is($rpt->{errortext}, undef, 'errortext 201211210353-KPUW');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KPUW');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211210353-KPUW');
is($rpt->{heat_index_f}, '95', 'heat_index_f 201211210353-KPUW');
is($rpt->{http}, undef, 'http 201211210353-KPUW');
is($rpt->{intensity}, undef, 'intensity 201211210353-KPUW');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KPUW');
is($rpt->{obs}, '2012/11/21 03:53 KPUW 210353Z AUTO 26004KT 10SM SCT024 BKN032 OVC060 08/06 A2978 RMK AO2 RAE18 SLP090 P0001 T00830061 ', 'obs 201211210353-KPUW');
is($rpt->{precipslr}, 'P0001', 'precipslr 201211210353-KPUW');
is($rpt->{pressure_inhg}, '29.78', 'pressure_inhg 201211210353-KPUW');
is($rpt->{pressure_kgcm}, '1.028351048', 'pressure_kgcm 201211210353-KPUW');
is($rpt->{pressure_lbin}, '14.62656612', 'pressure_lbin 201211210353-KPUW');
is($rpt->{pressure_mb}, '1008', 'pressure_mb 201211210353-KPUW');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211210353-KPUW');
is($rpt->{ptemperature}, 'T00830061', 'ptemperature 201211210353-KPUW');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210353-KPUW');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','RAE18',1009,'P0001','T00830061'], 'remark_arrayref 201211210353-KPUW');
is($rpt->{slp_inhg}, '29.79', 'slp_inhg 201211210353-KPUW');
is($rpt->{slp_kgcm}, '1.02889748', 'slp_kgcm 201211210353-KPUW');
is($rpt->{slp_lbin}, '14.6343342', 'slp_lbin 201211210353-KPUW');
is($rpt->{slp_mb}, '1009', 'slp_mb 201211210353-KPUW');
is($rpt->{slp_mmhg}, '757', 'slp_mmhg 201211210353-KPUW');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KPUW');
is($rpt->{storm}, undef, 'storm 201211210353-KPUW');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210353-KPUW');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210353-KPUW');
is($rpt->{templateout}, undef, 'templateout 201211210353-KPUW');
is($rpt->{tfile}, undef, 'tfile 201211210353-KPUW');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KPUW');
is($rpt->{time}, '0353', 'time 201211210353-KPUW');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KPUW');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KPUW');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210353-KPUW');
is($rpt->{windchill_f}, '44', 'windchill_f 201211210353-KPUW');
is($rpt->{winddir}, '260', 'winddir 201211210353-KPUW');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211210353-KPUW');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KPUW');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KPUW');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KPUW');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210353-KPUW');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210353-KPUW');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210353-KPUW');
