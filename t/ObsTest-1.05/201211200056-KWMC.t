#!perl -T

use strict;
use warnings;

# Test 201211200056-KWMC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 00:56 KWMC 200056Z AUTO 17006KT 10SM OVC095 09/M02 A3012 RMK AO2 SLP201 T00941017  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 00:56 KWMC 200056Z AUTO 17006KT 10SM OVC095 09/M02 A3012 RMK AO2 SLP201 T00941017  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200056-KWMC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC095'], 'cloudlevel_arrayref 201211200056-KWMC');
is($rpt->{code}, 'KWMC', 'code 201211200056-KWMC');
is($rpt->{conditions1}, undef, 'conditions1 201211200056-KWMC');
is($rpt->{conditions2}, undef, 'conditions2 201211200056-KWMC');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200056-KWMC');
is($rpt->{day}, '20', 'day 201211200056-KWMC');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211200056-KWMC');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211200056-KWMC');
is($rpt->{error}, undef, 'error 201211200056-KWMC');
is($rpt->{errortext}, undef, 'errortext 201211200056-KWMC');
is($rpt->{eventbe}, undef, 'eventbe 201211200056-KWMC');
is($rpt->{heat_index_c}, '38', 'heat_index_c 201211200056-KWMC');
is($rpt->{heat_index_f}, '101', 'heat_index_f 201211200056-KWMC');
is($rpt->{http}, undef, 'http 201211200056-KWMC');
is($rpt->{intensity}, undef, 'intensity 201211200056-KWMC');
is($rpt->{maintenance}, undef, 'maintenance 201211200056-KWMC');
is($rpt->{obs}, '2012/11/20 00:56 KWMC 200056Z AUTO 17006KT 10SM OVC095 09/M02 A3012 RMK AO2 SLP201 T00941017  ', 'obs 201211200056-KWMC');
is($rpt->{precipslr}, undef, 'precipslr 201211200056-KWMC');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211200056-KWMC');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211200056-KWMC');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211200056-KWMC');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211200056-KWMC');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211200056-KWMC');
is($rpt->{ptemperature}, 'T00941017', 'ptemperature 201211200056-KWMC');
is($rpt->{relative_humidity}, '46', 'relative_humidity 201211200056-KWMC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.1','T00941017'], 'remark_arrayref 201211200056-KWMC');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211200056-KWMC');
is($rpt->{slp_kgcm}, '1.040216372', 'slp_kgcm 201211200056-KWMC');
is($rpt->{slp_lbin}, '14.79532638', 'slp_lbin 201211200056-KWMC');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211200056-KWMC');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211200056-KWMC');
is($rpt->{station_type}, 'Automated', 'station_type 201211200056-KWMC');
is($rpt->{storm}, undef, 'storm 201211200056-KWMC');
is($rpt->{temperature_c}, '09', 'temperature_c 201211200056-KWMC');
is($rpt->{temperature_f}, '48', 'temperature_f 201211200056-KWMC');
is($rpt->{templateout}, undef, 'templateout 201211200056-KWMC');
is($rpt->{tfile}, undef, 'tfile 201211200056-KWMC');
is($rpt->{thpressure}, undef, 'thpressure 201211200056-KWMC');
is($rpt->{time}, '0056', 'time 201211200056-KWMC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200056-KWMC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200056-KWMC');
is($rpt->{windchill_c}, '7', 'windchill_c 201211200056-KWMC');
is($rpt->{windchill_f}, '45', 'windchill_f 201211200056-KWMC');
is($rpt->{winddir}, '170', 'winddir 201211200056-KWMC');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211200056-KWMC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200056-KWMC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200056-KWMC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200056-KWMC');
is($rpt->{windspeedkmh}, '11', 'windspeedkmh 201211200056-KWMC');
is($rpt->{windspeedkts}, '6', 'windspeedkts 201211200056-KWMC');
is($rpt->{windspeedmph}, '7', 'windspeedmph 201211200056-KWMC');
