#!perl -T

use strict;
use warnings;

# Test 201211210255-K9L2
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:55 K9L2 210255Z AUTO 30006KT 10SM CLR 12/01 A3007 RMK AO2 SLP192 T01220006 53007 $  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:55 K9L2 210255Z AUTO 30006KT 10SM CLR 12/01 A3007 RMK AO2 SLP192 T01220006 53007 $  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210255-K9L2');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210255-K9L2');
is($rpt->{code}, 'K9L2', 'code 201211210255-K9L2');
is($rpt->{conditions1}, undef, 'conditions1 201211210255-K9L2');
is($rpt->{conditions2}, undef, 'conditions2 201211210255-K9L2');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210255-K9L2');
is($rpt->{day}, '21', 'day 201211210255-K9L2');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210255-K9L2');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210255-K9L2');
is($rpt->{error}, undef, 'error 201211210255-K9L2');
is($rpt->{errortext}, undef, 'errortext 201211210255-K9L2');
is($rpt->{eventbe}, undef, 'eventbe 201211210255-K9L2');
is($rpt->{heat_index_c}, '33', 'heat_index_c 201211210255-K9L2');
is($rpt->{heat_index_f}, '92', 'heat_index_f 201211210255-K9L2');
is($rpt->{http}, undef, 'http 201211210255-K9L2');
is($rpt->{intensity}, undef, 'intensity 201211210255-K9L2');
is($rpt->{maintenance}, '$', 'maintenance 201211210255-K9L2');
is($rpt->{obs}, '2012/11/21 02:55 K9L2 210255Z AUTO 30006KT 10SM CLR 12/01 A3007 RMK AO2 SLP192 T01220006 53007 $  ', 'obs 201211210255-K9L2');
is($rpt->{precipslr}, undef, 'precipslr 201211210255-K9L2');
is($rpt->{pressure_inhg}, '30.07', 'pressure_inhg 201211210255-K9L2');
is($rpt->{pressure_kgcm}, '1.038365212', 'pressure_kgcm 201211210255-K9L2');
is($rpt->{pressure_lbin}, '14.76900078', 'pressure_lbin 201211210255-K9L2');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210255-K9L2');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210255-K9L2');
is($rpt->{ptemperature}, 'T01220006', 'ptemperature 201211210255-K9L2');
is($rpt->{relative_humidity}, '47', 'relative_humidity 201211210255-K9L2');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.2','T01220006','53007','$'], 'remark_arrayref 201211210255-K9L2');
is($rpt->{slp_inhg}, '30.09', 'slp_inhg 201211210255-K9L2');
is($rpt->{slp_kgcm}, '1.039298624', 'slp_kgcm 201211210255-K9L2');
is($rpt->{slp_lbin}, '14.78227296', 'slp_lbin 201211210255-K9L2');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211210255-K9L2');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211210255-K9L2');
is($rpt->{station_type}, 'Automated', 'station_type 201211210255-K9L2');
is($rpt->{storm}, undef, 'storm 201211210255-K9L2');
is($rpt->{temperature_c}, '12', 'temperature_c 201211210255-K9L2');
is($rpt->{temperature_f}, '54', 'temperature_f 201211210255-K9L2');
is($rpt->{templateout}, undef, 'templateout 201211210255-K9L2');
is($rpt->{tfile}, undef, 'tfile 201211210255-K9L2');
is($rpt->{thpressure}, '53007', 'thpressure 201211210255-K9L2');
is($rpt->{time}, '0255', 'time 201211210255-K9L2');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210255-K9L2');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210255-K9L2');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210255-K9L2');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210255-K9L2');
is($rpt->{winddir}, '300', 'winddir 201211210255-K9L2');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210255-K9L2');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210255-K9L2');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210255-K9L2');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210255-K9L2');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211210255-K9L2');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211210255-K9L2');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211210255-K9L2');
