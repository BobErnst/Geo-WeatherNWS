#!perl -T

use strict;
use warnings;

# Test 201211232155-KLLJ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 KLLJ 232155Z AUTO 00000KT 10SM CLR 02/M08 A3031 RMK AO2 SLP291 T00171078 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 KLLJ 232155Z AUTO 00000KT 10SM CLR 02/M08 A3031 RMK AO2 SLP291 T00171078 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232155-KLLJ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232155-KLLJ');
is($rpt->{code}, 'KLLJ', 'code 201211232155-KLLJ');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-KLLJ');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-KLLJ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232155-KLLJ');
is($rpt->{day}, '23', 'day 201211232155-KLLJ');
is($rpt->{dewpoint_c}, '-8', 'dewpoint_c 201211232155-KLLJ');
is($rpt->{dewpoint_f}, '18', 'dewpoint_f 201211232155-KLLJ');
is($rpt->{error}, undef, 'error 201211232155-KLLJ');
is($rpt->{errortext}, undef, 'errortext 201211232155-KLLJ');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-KLLJ');
is($rpt->{heat_index_c}, '58', 'heat_index_c 201211232155-KLLJ');
is($rpt->{heat_index_f}, '136', 'heat_index_f 201211232155-KLLJ');
is($rpt->{http}, undef, 'http 201211232155-KLLJ');
is($rpt->{intensity}, undef, 'intensity 201211232155-KLLJ');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-KLLJ');
is($rpt->{obs}, '2012/11/23 21:55 KLLJ 232155Z AUTO 00000KT 10SM CLR 02/M08 A3031 RMK AO2 SLP291 T00171078 ', 'obs 201211232155-KLLJ');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-KLLJ');
is($rpt->{pressure_inhg}, '30.31', 'pressure_inhg 201211232155-KLLJ');
is($rpt->{pressure_kgcm}, '1.046652796', 'pressure_kgcm 201211232155-KLLJ');
is($rpt->{pressure_lbin}, '14.88687774', 'pressure_lbin 201211232155-KLLJ');
is($rpt->{pressure_mb}, '1026', 'pressure_mb 201211232155-KLLJ');
is($rpt->{pressure_mmhg}, '770', 'pressure_mmhg 201211232155-KLLJ');
is($rpt->{ptemperature}, 'T00171078', 'ptemperature 201211232155-KLLJ');
is($rpt->{relative_humidity}, '47', 'relative_humidity 201211232155-KLLJ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1029.1','T00171078'], 'remark_arrayref 201211232155-KLLJ');
is($rpt->{slp_inhg}, '30.38', 'slp_inhg 201211232155-KLLJ');
is($rpt->{slp_kgcm}, '1.049393852', 'slp_kgcm 201211232155-KLLJ');
is($rpt->{slp_lbin}, '14.92586058', 'slp_lbin 201211232155-KLLJ');
is($rpt->{slp_mb}, '1029', 'slp_mb 201211232155-KLLJ');
is($rpt->{slp_mmhg}, '772', 'slp_mmhg 201211232155-KLLJ');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-KLLJ');
is($rpt->{storm}, undef, 'storm 201211232155-KLLJ');
is($rpt->{temperature_c}, '02', 'temperature_c 201211232155-KLLJ');
is($rpt->{temperature_f}, '36', 'temperature_f 201211232155-KLLJ');
is($rpt->{templateout}, undef, 'templateout 201211232155-KLLJ');
is($rpt->{tfile}, undef, 'tfile 201211232155-KLLJ');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-KLLJ');
is($rpt->{time}, '2155', 'time 201211232155-KLLJ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-KLLJ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-KLLJ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232155-KLLJ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232155-KLLJ');
is($rpt->{winddir}, '0', 'winddir 201211232155-KLLJ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211232155-KLLJ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211232155-KLLJ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211232155-KLLJ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211232155-KLLJ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211232155-KLLJ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211232155-KLLJ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211232155-KLLJ');
