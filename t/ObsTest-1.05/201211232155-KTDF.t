#!perl -T

use strict;
use warnings;

# Test 201211232155-KTDF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:55 KTDF 232155Z AUTO 21004KT 10SM SCT120 15/02 A2989 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:55 KTDF 232155Z AUTO 21004KT 10SM SCT120 15/02 A2989 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211232155-KTDF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT120'], 'cloudlevel_arrayref 201211232155-KTDF');
is($rpt->{code}, 'KTDF', 'code 201211232155-KTDF');
is($rpt->{conditions1}, undef, 'conditions1 201211232155-KTDF');
is($rpt->{conditions2}, undef, 'conditions2 201211232155-KTDF');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211232155-KTDF');
is($rpt->{day}, '23', 'day 201211232155-KTDF');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211232155-KTDF');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211232155-KTDF');
is($rpt->{error}, undef, 'error 201211232155-KTDF');
is($rpt->{errortext}, undef, 'errortext 201211232155-KTDF');
is($rpt->{eventbe}, undef, 'eventbe 201211232155-KTDF');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211232155-KTDF');
is($rpt->{heat_index_f}, '83', 'heat_index_f 201211232155-KTDF');
is($rpt->{http}, undef, 'http 201211232155-KTDF');
is($rpt->{intensity}, undef, 'intensity 201211232155-KTDF');
is($rpt->{maintenance}, undef, 'maintenance 201211232155-KTDF');
is($rpt->{obs}, '2012/11/23 21:55 KTDF 232155Z AUTO 21004KT 10SM SCT120 15/02 A2989 RMK AO2 ', 'obs 201211232155-KTDF');
is($rpt->{precipslr}, undef, 'precipslr 201211232155-KTDF');
is($rpt->{pressure_inhg}, '29.89', 'pressure_inhg 201211232155-KTDF');
is($rpt->{pressure_kgcm}, '1.032149524', 'pressure_kgcm 201211232155-KTDF');
is($rpt->{pressure_lbin}, '14.68059306', 'pressure_lbin 201211232155-KTDF');
is($rpt->{pressure_mb}, '1012', 'pressure_mb 201211232155-KTDF');
is($rpt->{pressure_mmhg}, '759', 'pressure_mmhg 201211232155-KTDF');
is($rpt->{ptemperature}, undef, 'ptemperature 201211232155-KTDF');
is($rpt->{relative_humidity}, '41', 'relative_humidity 201211232155-KTDF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211232155-KTDF');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211232155-KTDF');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211232155-KTDF');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211232155-KTDF');
is($rpt->{slp_mb}, undef, 'slp_mb 201211232155-KTDF');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211232155-KTDF');
is($rpt->{station_type}, 'Automated', 'station_type 201211232155-KTDF');
is($rpt->{storm}, undef, 'storm 201211232155-KTDF');
is($rpt->{temperature_c}, '15', 'temperature_c 201211232155-KTDF');
is($rpt->{temperature_f}, '59', 'temperature_f 201211232155-KTDF');
is($rpt->{templateout}, undef, 'templateout 201211232155-KTDF');
is($rpt->{tfile}, undef, 'tfile 201211232155-KTDF');
is($rpt->{thpressure}, undef, 'thpressure 201211232155-KTDF');
is($rpt->{time}, '2155', 'time 201211232155-KTDF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232155-KTDF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232155-KTDF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232155-KTDF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232155-KTDF');
is($rpt->{winddir}, '210', 'winddir 201211232155-KTDF');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211232155-KTDF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211232155-KTDF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211232155-KTDF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211232155-KTDF');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211232155-KTDF');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211232155-KTDF');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211232155-KTDF');
