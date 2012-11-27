#!perl -T

use strict;
use warnings;

# Test 201211220635-K36U
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:35 K36U 220635Z AUTO 00000KT 10SM OVC090 05/M02 A3008 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:35 K36U 220635Z AUTO 00000KT 10SM OVC090 05/M02 A3008 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211220635-K36U');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC090'], 'cloudlevel_arrayref 201211220635-K36U');
is($rpt->{code}, 'K36U', 'code 201211220635-K36U');
is($rpt->{conditions1}, undef, 'conditions1 201211220635-K36U');
is($rpt->{conditions2}, undef, 'conditions2 201211220635-K36U');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211220635-K36U');
is($rpt->{day}, '22', 'day 201211220635-K36U');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211220635-K36U');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211220635-K36U');
is($rpt->{error}, undef, 'error 201211220635-K36U');
is($rpt->{errortext}, undef, 'errortext 201211220635-K36U');
is($rpt->{eventbe}, undef, 'eventbe 201211220635-K36U');
is($rpt->{heat_index_c}, '52', 'heat_index_c 201211220635-K36U');
is($rpt->{heat_index_f}, '126', 'heat_index_f 201211220635-K36U');
is($rpt->{http}, undef, 'http 201211220635-K36U');
is($rpt->{intensity}, undef, 'intensity 201211220635-K36U');
is($rpt->{maintenance}, undef, 'maintenance 201211220635-K36U');
is($rpt->{obs}, '2012/11/22 06:35 K36U 220635Z AUTO 00000KT 10SM OVC090 05/M02 A3008 RMK AO2 ', 'obs 201211220635-K36U');
is($rpt->{precipslr}, undef, 'precipslr 201211220635-K36U');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211220635-K36U');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211220635-K36U');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211220635-K36U');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211220635-K36U');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211220635-K36U');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220635-K36U');
is($rpt->{relative_humidity}, '61', 'relative_humidity 201211220635-K36U');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220635-K36U');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220635-K36U');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220635-K36U');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220635-K36U');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220635-K36U');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220635-K36U');
is($rpt->{station_type}, 'Automated', 'station_type 201211220635-K36U');
is($rpt->{storm}, undef, 'storm 201211220635-K36U');
is($rpt->{temperature_c}, '05', 'temperature_c 201211220635-K36U');
is($rpt->{temperature_f}, '41', 'temperature_f 201211220635-K36U');
is($rpt->{templateout}, undef, 'templateout 201211220635-K36U');
is($rpt->{tfile}, undef, 'tfile 201211220635-K36U');
is($rpt->{thpressure}, undef, 'thpressure 201211220635-K36U');
is($rpt->{time}, '0635', 'time 201211220635-K36U');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220635-K36U');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220635-K36U');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220635-K36U');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220635-K36U');
is($rpt->{winddir}, '0', 'winddir 201211220635-K36U');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220635-K36U');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220635-K36U');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220635-K36U');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220635-K36U');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220635-K36U');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220635-K36U');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220635-K36U');
