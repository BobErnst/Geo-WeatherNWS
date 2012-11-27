#!perl -T

use strict;
use warnings;

# Test 201211210351-KORF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:51 KORF 210351Z 02009KT 10SM CLR 09/07 A3009 RMK AO2 SLP189 T00940072  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:51 KORF 210351Z 02009KT 10SM CLR 09/07 A3009 RMK AO2 SLP189 T00940072  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210351-KORF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210351-KORF');
is($rpt->{code}, 'KORF', 'code 201211210351-KORF');
is($rpt->{conditions1}, undef, 'conditions1 201211210351-KORF');
is($rpt->{conditions2}, undef, 'conditions2 201211210351-KORF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210351-KORF');
is($rpt->{day}, '21', 'day 201211210351-KORF');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211210351-KORF');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211210351-KORF');
is($rpt->{error}, undef, 'error 201211210351-KORF');
is($rpt->{errortext}, undef, 'errortext 201211210351-KORF');
is($rpt->{eventbe}, undef, 'eventbe 201211210351-KORF');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211210351-KORF');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211210351-KORF');
is($rpt->{http}, undef, 'http 201211210351-KORF');
is($rpt->{intensity}, undef, 'intensity 201211210351-KORF');
is($rpt->{maintenance}, undef, 'maintenance 201211210351-KORF');
is($rpt->{obs}, '2012/11/21 03:51 KORF 210351Z 02009KT 10SM CLR 09/07 A3009 RMK AO2 SLP189 T00940072  ', 'obs 201211210351-KORF');
is($rpt->{precipslr}, undef, 'precipslr 201211210351-KORF');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211210351-KORF');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211210351-KORF');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211210351-KORF');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210351-KORF');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210351-KORF');
is($rpt->{ptemperature}, 'T00940072', 'ptemperature 201211210351-KORF');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210351-KORF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.9','T00940072'], 'remark_arrayref 201211210351-KORF');
is($rpt->{slp_inhg}, '30.08', 'slp_inhg 201211210351-KORF');
is($rpt->{slp_kgcm}, '1.038992708', 'slp_kgcm 201211210351-KORF');
is($rpt->{slp_lbin}, '14.77792182', 'slp_lbin 201211210351-KORF');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211210351-KORF');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211210351-KORF');
is($rpt->{station_type}, 'Automated', 'station_type 201211210351-KORF');
is($rpt->{storm}, undef, 'storm 201211210351-KORF');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210351-KORF');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210351-KORF');
is($rpt->{templateout}, undef, 'templateout 201211210351-KORF');
is($rpt->{tfile}, undef, 'tfile 201211210351-KORF');
is($rpt->{thpressure}, undef, 'thpressure 201211210351-KORF');
is($rpt->{time}, '0351', 'time 201211210351-KORF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210351-KORF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210351-KORF');
is($rpt->{windchill_c}, '7', 'windchill_c 201211210351-KORF');
is($rpt->{windchill_f}, '44', 'windchill_f 201211210351-KORF');
is($rpt->{winddir}, '20', 'winddir 201211210351-KORF');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210351-KORF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210351-KORF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210351-KORF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210351-KORF');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211210351-KORF');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211210351-KORF');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211210351-KORF');
