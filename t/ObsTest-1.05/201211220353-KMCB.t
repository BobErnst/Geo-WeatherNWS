#!perl -T

use strict;
use warnings;

# Test 201211220353-KMCB
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:53 KMCB 220353Z AUTO 00000KT 10SM CLR 09/07 A3021 RMK AO2 SLP229 T00940067 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:53 KMCB 220353Z AUTO 00000KT 10SM CLR 09/07 A3021 RMK AO2 SLP229 T00940067 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220353-KMCB');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220353-KMCB');
is($rpt->{code}, 'KMCB', 'code 201211220353-KMCB');
is($rpt->{conditions1}, undef, 'conditions1 201211220353-KMCB');
is($rpt->{conditions2}, undef, 'conditions2 201211220353-KMCB');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220353-KMCB');
is($rpt->{day}, '22', 'day 201211220353-KMCB');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211220353-KMCB');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211220353-KMCB');
is($rpt->{error}, undef, 'error 201211220353-KMCB');
is($rpt->{errortext}, undef, 'errortext 201211220353-KMCB');
is($rpt->{eventbe}, undef, 'eventbe 201211220353-KMCB');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211220353-KMCB');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211220353-KMCB');
is($rpt->{http}, undef, 'http 201211220353-KMCB');
is($rpt->{intensity}, undef, 'intensity 201211220353-KMCB');
is($rpt->{maintenance}, undef, 'maintenance 201211220353-KMCB');
is($rpt->{obs}, '2012/11/22 03:53 KMCB 220353Z AUTO 00000KT 10SM CLR 09/07 A3021 RMK AO2 SLP229 T00940067 ', 'obs 201211220353-KMCB');
is($rpt->{precipslr}, undef, 'precipslr 201211220353-KMCB');
is($rpt->{pressure_inhg}, '30.21', 'pressure_inhg 201211220353-KMCB');
is($rpt->{pressure_kgcm}, '1.043199636', 'pressure_kgcm 201211220353-KMCB');
is($rpt->{pressure_lbin}, '14.83776234', 'pressure_lbin 201211220353-KMCB');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220353-KMCB');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220353-KMCB');
is($rpt->{ptemperature}, 'T00940067', 'ptemperature 201211220353-KMCB');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211220353-KMCB');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1022.9','T00940067'], 'remark_arrayref 201211220353-KMCB');
is($rpt->{slp_inhg}, '30.20', 'slp_inhg 201211220353-KMCB');
is($rpt->{slp_kgcm}, '1.043071588', 'slp_kgcm 201211220353-KMCB');
is($rpt->{slp_lbin}, '14.83593702', 'slp_lbin 201211220353-KMCB');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211220353-KMCB');
is($rpt->{slp_mmhg}, '767', 'slp_mmhg 201211220353-KMCB');
is($rpt->{station_type}, 'Automated', 'station_type 201211220353-KMCB');
is($rpt->{storm}, undef, 'storm 201211220353-KMCB');
is($rpt->{temperature_c}, '09', 'temperature_c 201211220353-KMCB');
is($rpt->{temperature_f}, '48', 'temperature_f 201211220353-KMCB');
is($rpt->{templateout}, undef, 'templateout 201211220353-KMCB');
is($rpt->{tfile}, undef, 'tfile 201211220353-KMCB');
is($rpt->{thpressure}, undef, 'thpressure 201211220353-KMCB');
is($rpt->{time}, '0353', 'time 201211220353-KMCB');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220353-KMCB');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220353-KMCB');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220353-KMCB');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220353-KMCB');
is($rpt->{winddir}, '0', 'winddir 201211220353-KMCB');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220353-KMCB');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220353-KMCB');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220353-KMCB');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220353-KMCB');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220353-KMCB');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220353-KMCB');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220353-KMCB');
