#!perl -T

use strict;
use warnings;

# Test 201211220553-KSWO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:53 KSWO 220553Z AUTO 17011KT 10SM CLR 17/07 A3001 RMK AO2 SLP153 T01720067 10194 20128 402560033 58014 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:53 KSWO 220553Z AUTO 17011KT 10SM CLR 17/07 A3001 RMK AO2 SLP153 T01720067 10194 20128 402560033 58014 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220553-KSWO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220553-KSWO');
is($rpt->{code}, 'KSWO', 'code 201211220553-KSWO');
is($rpt->{conditions1}, undef, 'conditions1 201211220553-KSWO');
is($rpt->{conditions2}, undef, 'conditions2 201211220553-KSWO');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220553-KSWO');
is($rpt->{day}, '22', 'day 201211220553-KSWO');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211220553-KSWO');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211220553-KSWO');
is($rpt->{error}, undef, 'error 201211220553-KSWO');
is($rpt->{errortext}, undef, 'errortext 201211220553-KSWO');
is($rpt->{eventbe}, undef, 'eventbe 201211220553-KSWO');
is($rpt->{heat_index_c}, '27', 'heat_index_c 201211220553-KSWO');
is($rpt->{heat_index_f}, '80', 'heat_index_f 201211220553-KSWO');
is($rpt->{http}, undef, 'http 201211220553-KSWO');
is($rpt->{intensity}, undef, 'intensity 201211220553-KSWO');
is($rpt->{maintenance}, undef, 'maintenance 201211220553-KSWO');
is($rpt->{obs}, '2012/11/22 05:53 KSWO 220553Z AUTO 17011KT 10SM CLR 17/07 A3001 RMK AO2 SLP153 T01720067 10194 20128 402560033 58014 ', 'obs 201211220553-KSWO');
is($rpt->{precipslr}, undef, 'precipslr 201211220553-KSWO');
is($rpt->{pressure_inhg}, '30.01', 'pressure_inhg 201211220553-KSWO');
is($rpt->{pressure_kgcm}, '1.036293316', 'pressure_kgcm 201211220553-KSWO');
is($rpt->{pressure_lbin}, '14.73953154', 'pressure_lbin 201211220553-KSWO');
is($rpt->{pressure_mb}, '1016', 'pressure_mb 201211220553-KSWO');
is($rpt->{pressure_mmhg}, '762', 'pressure_mmhg 201211220553-KSWO');
is($rpt->{ptemperature}, 'T01720067', 'ptemperature 201211220553-KSWO');
is($rpt->{relative_humidity}, '52', 'relative_humidity 201211220553-KSWO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1015.3','T01720067','10194','20128','402560033','58014'], 'remark_arrayref 201211220553-KSWO');
is($rpt->{slp_inhg}, '29.98', 'slp_inhg 201211220553-KSWO');
is($rpt->{slp_kgcm}, '1.035321716', 'slp_kgcm 201211220553-KSWO');
is($rpt->{slp_lbin}, '14.72570814', 'slp_lbin 201211220553-KSWO');
is($rpt->{slp_mb}, '1015', 'slp_mb 201211220553-KSWO');
is($rpt->{slp_mmhg}, '762', 'slp_mmhg 201211220553-KSWO');
is($rpt->{station_type}, 'Automated', 'station_type 201211220553-KSWO');
is($rpt->{storm}, undef, 'storm 201211220553-KSWO');
is($rpt->{temperature_c}, '17', 'temperature_c 201211220553-KSWO');
is($rpt->{temperature_f}, '63', 'temperature_f 201211220553-KSWO');
is($rpt->{templateout}, undef, 'templateout 201211220553-KSWO');
is($rpt->{tfile}, undef, 'tfile 201211220553-KSWO');
is($rpt->{thpressure}, '58014', 'thpressure 201211220553-KSWO');
is($rpt->{time}, '0553', 'time 201211220553-KSWO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220553-KSWO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220553-KSWO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220553-KSWO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220553-KSWO');
is($rpt->{winddir}, '170', 'winddir 201211220553-KSWO');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220553-KSWO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220553-KSWO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220553-KSWO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220553-KSWO');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211220553-KSWO');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211220553-KSWO');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211220553-KSWO');
