#!perl -T

use strict;
use warnings;

# Test 201211220555-KOFF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:55 KOFF 220555Z AUTO 15009KT 10SM CLR 10/06 A2982 RMK AO2 SLP093 T01030058 10180 20102 402271005 58016 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:55 KOFF 220555Z AUTO 15009KT 10SM CLR 10/06 A2982 RMK AO2 SLP093 T01030058 10180 20102 402271005 58016 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220555-KOFF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220555-KOFF');
is($rpt->{code}, 'KOFF', 'code 201211220555-KOFF');
is($rpt->{conditions1}, undef, 'conditions1 201211220555-KOFF');
is($rpt->{conditions2}, undef, 'conditions2 201211220555-KOFF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220555-KOFF');
is($rpt->{day}, '22', 'day 201211220555-KOFF');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211220555-KOFF');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211220555-KOFF');
is($rpt->{error}, undef, 'error 201211220555-KOFF');
is($rpt->{errortext}, undef, 'errortext 201211220555-KOFF');
is($rpt->{eventbe}, undef, 'eventbe 201211220555-KOFF');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211220555-KOFF');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211220555-KOFF');
is($rpt->{http}, undef, 'http 201211220555-KOFF');
is($rpt->{intensity}, undef, 'intensity 201211220555-KOFF');
is($rpt->{maintenance}, '$', 'maintenance 201211220555-KOFF');
is($rpt->{obs}, '2012/11/22 05:55 KOFF 220555Z AUTO 15009KT 10SM CLR 10/06 A2982 RMK AO2 SLP093 T01030058 10180 20102 402271005 58016 $ ', 'obs 201211220555-KOFF');
is($rpt->{precipslr}, undef, 'precipslr 201211220555-KOFF');
is($rpt->{pressure_inhg}, '29.82', 'pressure_inhg 201211220555-KOFF');
is($rpt->{pressure_kgcm}, '1.029732312', 'pressure_kgcm 201211220555-KOFF');
is($rpt->{pressure_lbin}, '14.64621228', 'pressure_lbin 201211220555-KOFF');
is($rpt->{pressure_mb}, '1010', 'pressure_mb 201211220555-KOFF');
is($rpt->{pressure_mmhg}, '757', 'pressure_mmhg 201211220555-KOFF');
is($rpt->{ptemperature}, 'T01030058', 'ptemperature 201211220555-KOFF');
is($rpt->{relative_humidity}, '76', 'relative_humidity 201211220555-KOFF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1009.3','T01030058','10180','20102','402271005','58016','$'], 'remark_arrayref 201211220555-KOFF');
is($rpt->{slp_inhg}, '29.80', 'slp_inhg 201211220555-KOFF');
is($rpt->{slp_kgcm}, '1.029203396', 'slp_kgcm 201211220555-KOFF');
is($rpt->{slp_lbin}, '14.63868534', 'slp_lbin 201211220555-KOFF');
is($rpt->{slp_mb}, '1009', 'slp_mb 201211220555-KOFF');
is($rpt->{slp_mmhg}, '757', 'slp_mmhg 201211220555-KOFF');
is($rpt->{station_type}, 'Automated', 'station_type 201211220555-KOFF');
is($rpt->{storm}, undef, 'storm 201211220555-KOFF');
is($rpt->{temperature_c}, '10', 'temperature_c 201211220555-KOFF');
is($rpt->{temperature_f}, '50', 'temperature_f 201211220555-KOFF');
is($rpt->{templateout}, undef, 'templateout 201211220555-KOFF');
is($rpt->{tfile}, undef, 'tfile 201211220555-KOFF');
is($rpt->{thpressure}, '58016', 'thpressure 201211220555-KOFF');
is($rpt->{time}, '0555', 'time 201211220555-KOFF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220555-KOFF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220555-KOFF');
is($rpt->{windchill_c}, '8', 'windchill_c 201211220555-KOFF');
is($rpt->{windchill_f}, '46', 'windchill_f 201211220555-KOFF');
is($rpt->{winddir}, '150', 'winddir 201211220555-KOFF');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211220555-KOFF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220555-KOFF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220555-KOFF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220555-KOFF');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211220555-KOFF');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211220555-KOFF');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211220555-KOFF');
