#!perl -T

use strict;
use warnings;

# Test 201211210353-KELN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KELN 210353Z AUTO 06003KT 10SM CLR 02/M01 A2968 RMK AO2 SLP059 T00221006 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KELN 210353Z AUTO 06003KT 10SM CLR 02/M01 A2968 RMK AO2 SLP059 T00221006 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KELN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KELN');
is($rpt->{code}, 'KELN', 'code 201211210353-KELN');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KELN');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KELN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KELN');
is($rpt->{day}, '21', 'day 201211210353-KELN');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211210353-KELN');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211210353-KELN');
is($rpt->{error}, undef, 'error 201211210353-KELN');
is($rpt->{errortext}, undef, 'errortext 201211210353-KELN');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KELN');
is($rpt->{heat_index_c}, '63', 'heat_index_c 201211210353-KELN');
is($rpt->{heat_index_f}, '145', 'heat_index_f 201211210353-KELN');
is($rpt->{http}, undef, 'http 201211210353-KELN');
is($rpt->{intensity}, undef, 'intensity 201211210353-KELN');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KELN');
is($rpt->{obs}, '2012/11/21 03:53 KELN 210353Z AUTO 06003KT 10SM CLR 02/M01 A2968 RMK AO2 SLP059 T00221006 TSNO ', 'obs 201211210353-KELN');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KELN');
is($rpt->{pressure_inhg}, '29.68', 'pressure_inhg 201211210353-KELN');
is($rpt->{pressure_kgcm}, '1.024897888', 'pressure_kgcm 201211210353-KELN');
is($rpt->{pressure_lbin}, '14.57745072', 'pressure_lbin 201211210353-KELN');
is($rpt->{pressure_mb}, '1005', 'pressure_mb 201211210353-KELN');
is($rpt->{pressure_mmhg}, '754', 'pressure_mmhg 201211210353-KELN');
is($rpt->{ptemperature}, 'T00221006', 'ptemperature 201211210353-KELN');
is($rpt->{relative_humidity}, '80', 'relative_humidity 201211210353-KELN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1005.9','T00221006','TSNO'], 'remark_arrayref 201211210353-KELN');
is($rpt->{slp_inhg}, '29.70', 'slp_inhg 201211210353-KELN');
is($rpt->{slp_kgcm}, '1.025736348', 'slp_kgcm 201211210353-KELN');
is($rpt->{slp_lbin}, '14.58937242', 'slp_lbin 201211210353-KELN');
is($rpt->{slp_mb}, '1006', 'slp_mb 201211210353-KELN');
is($rpt->{slp_mmhg}, '754', 'slp_mmhg 201211210353-KELN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KELN');
is($rpt->{storm}, 'TSNO', 'storm 201211210353-KELN');
is($rpt->{temperature_c}, '02', 'temperature_c 201211210353-KELN');
is($rpt->{temperature_f}, '36', 'temperature_f 201211210353-KELN');
is($rpt->{templateout}, undef, 'templateout 201211210353-KELN');
is($rpt->{tfile}, undef, 'tfile 201211210353-KELN');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KELN');
is($rpt->{time}, '0353', 'time 201211210353-KELN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KELN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KELN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KELN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KELN');
is($rpt->{winddir}, '60', 'winddir 201211210353-KELN');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211210353-KELN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KELN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KELN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KELN');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210353-KELN');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210353-KELN');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210353-KELN');
