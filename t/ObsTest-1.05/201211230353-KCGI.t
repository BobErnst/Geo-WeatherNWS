#!perl -T

use strict;
use warnings;

# Test 201211230353-KCGI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KCGI 230353Z AUTO 00000KT 10SM FEW085 13/09 A3009 RMK AO2 SLP189 T01280089 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KCGI 230353Z AUTO 00000KT 10SM FEW085 13/09 A3009 RMK AO2 SLP189 T01280089 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211230353-KCGI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW085'], 'cloudlevel_arrayref 201211230353-KCGI');
is($rpt->{code}, 'KCGI', 'code 201211230353-KCGI');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KCGI');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KCGI');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211230353-KCGI');
is($rpt->{day}, '23', 'day 201211230353-KCGI');
is($rpt->{dewpoint_c}, '09', 'dewpoint_c 201211230353-KCGI');
is($rpt->{dewpoint_f}, '48', 'dewpoint_f 201211230353-KCGI');
is($rpt->{error}, undef, 'error 201211230353-KCGI');
is($rpt->{errortext}, undef, 'errortext 201211230353-KCGI');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KCGI');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211230353-KCGI');
is($rpt->{heat_index_f}, '82', 'heat_index_f 201211230353-KCGI');
is($rpt->{http}, undef, 'http 201211230353-KCGI');
is($rpt->{intensity}, undef, 'intensity 201211230353-KCGI');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KCGI');
is($rpt->{obs}, '2012/11/23 03:53 KCGI 230353Z AUTO 00000KT 10SM FEW085 13/09 A3009 RMK AO2 SLP189 T01280089 ', 'obs 201211230353-KCGI');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KCGI');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211230353-KCGI');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211230353-KCGI');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211230353-KCGI');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211230353-KCGI');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211230353-KCGI');
is($rpt->{ptemperature}, 'T01280089', 'ptemperature 201211230353-KCGI');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211230353-KCGI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.9','T01280089'], 'remark_arrayref 201211230353-KCGI');
is($rpt->{slp_inhg}, '30.08', 'slp_inhg 201211230353-KCGI');
is($rpt->{slp_kgcm}, '1.038992708', 'slp_kgcm 201211230353-KCGI');
is($rpt->{slp_lbin}, '14.77792182', 'slp_lbin 201211230353-KCGI');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211230353-KCGI');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211230353-KCGI');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KCGI');
is($rpt->{storm}, undef, 'storm 201211230353-KCGI');
is($rpt->{temperature_c}, '13', 'temperature_c 201211230353-KCGI');
is($rpt->{temperature_f}, '55', 'temperature_f 201211230353-KCGI');
is($rpt->{templateout}, undef, 'templateout 201211230353-KCGI');
is($rpt->{tfile}, undef, 'tfile 201211230353-KCGI');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KCGI');
is($rpt->{time}, '0353', 'time 201211230353-KCGI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KCGI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KCGI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230353-KCGI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230353-KCGI');
is($rpt->{winddir}, '0', 'winddir 201211230353-KCGI');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230353-KCGI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KCGI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KCGI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KCGI');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230353-KCGI');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230353-KCGI');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230353-KCGI');
