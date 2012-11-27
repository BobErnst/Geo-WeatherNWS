#!perl -T

use strict;
use warnings;

# Test 201211210253-KHRI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:53 KHRI 210253Z AUTO 15003KT 10SM -RA OVC065 10/08 A2975 RMK AO2 SLP074 P0001 60002 T01000083 51024 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:53 KHRI 210253Z AUTO 15003KT 10SM -RA OVC065 10/08 A2975 RMK AO2 SLP074 P0001 60002 T01000083 51024 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210253-KHRI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC065'], 'cloudlevel_arrayref 201211210253-KHRI');
is($rpt->{code}, 'KHRI', 'code 201211210253-KHRI');
is($rpt->{conditions1}, 'Rain', 'conditions1 201211210253-KHRI');
is($rpt->{conditions2}, undef, 'conditions2 201211210253-KHRI');
is($rpt->{conditionstext}, 'Light Rain', 'conditionstext 201211210253-KHRI');
is($rpt->{day}, '21', 'day 201211210253-KHRI');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210253-KHRI');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210253-KHRI');
is($rpt->{error}, undef, 'error 201211210253-KHRI');
is($rpt->{errortext}, undef, 'errortext 201211210253-KHRI');
is($rpt->{eventbe}, undef, 'eventbe 201211210253-KHRI');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201211210253-KHRI');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211210253-KHRI');
is($rpt->{http}, undef, 'http 201211210253-KHRI');
is($rpt->{intensity}, 'Light', 'intensity 201211210253-KHRI');
is($rpt->{maintenance}, undef, 'maintenance 201211210253-KHRI');
is($rpt->{obs}, '2012/11/21 02:53 KHRI 210253Z AUTO 15003KT 10SM -RA OVC065 10/08 A2975 RMK AO2 SLP074 P0001 60002 T01000083 51024 TSNO ', 'obs 201211210253-KHRI');
is($rpt->{precipslr}, 'P0001', 'precipslr 201211210253-KHRI');
is($rpt->{pressure_inhg}, '29.75', 'pressure_inhg 201211210253-KHRI');
is($rpt->{pressure_kgcm}, '1.0273151', 'pressure_kgcm 201211210253-KHRI');
is($rpt->{pressure_lbin}, '14.6118315', 'pressure_lbin 201211210253-KHRI');
is($rpt->{pressure_mb}, '1007', 'pressure_mb 201211210253-KHRI');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211210253-KHRI');
is($rpt->{ptemperature}, 'T01000083', 'ptemperature 201211210253-KHRI');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210253-KHRI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1007.4','P0001','60002','T01000083','51024','TSNO'], 'remark_arrayref 201211210253-KHRI');
is($rpt->{slp_inhg}, '29.74', 'slp_inhg 201211210253-KHRI');
is($rpt->{slp_kgcm}, '1.027265928', 'slp_kgcm 201211210253-KHRI');
is($rpt->{slp_lbin}, '14.61112812', 'slp_lbin 201211210253-KHRI');
is($rpt->{slp_mb}, '1007', 'slp_mb 201211210253-KHRI');
is($rpt->{slp_mmhg}, '756', 'slp_mmhg 201211210253-KHRI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210253-KHRI');
is($rpt->{storm}, 'TSNO', 'storm 201211210253-KHRI');
is($rpt->{temperature_c}, '10', 'temperature_c 201211210253-KHRI');
is($rpt->{temperature_f}, '50', 'temperature_f 201211210253-KHRI');
is($rpt->{templateout}, undef, 'templateout 201211210253-KHRI');
is($rpt->{tfile}, undef, 'tfile 201211210253-KHRI');
is($rpt->{thpressure}, '51024', 'thpressure 201211210253-KHRI');
is($rpt->{time}, '0253', 'time 201211210253-KHRI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210253-KHRI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210253-KHRI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210253-KHRI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210253-KHRI');
is($rpt->{winddir}, '150', 'winddir 201211210253-KHRI');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210253-KHRI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210253-KHRI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210253-KHRI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210253-KHRI');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210253-KHRI');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210253-KHRI');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210253-KHRI');
