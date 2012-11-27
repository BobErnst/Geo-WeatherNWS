#!perl -T

use strict;
use warnings;

# Test 201211210355-KTVI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KTVI 210355Z AUTO 32003KT 10SM SCT120 12/11 A3011 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KTVI 210355Z AUTO 32003KT 10SM SCT120 12/11 A3011 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211210355-KTVI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT120'], 'cloudlevel_arrayref 201211210355-KTVI');
is($rpt->{code}, 'KTVI', 'code 201211210355-KTVI');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KTVI');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KTVI');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211210355-KTVI');
is($rpt->{day}, '21', 'day 201211210355-KTVI');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211210355-KTVI');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211210355-KTVI');
is($rpt->{error}, undef, 'error 201211210355-KTVI');
is($rpt->{errortext}, undef, 'errortext 201211210355-KTVI');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KTVI');
is($rpt->{heat_index_c}, '21', 'heat_index_c 201211210355-KTVI');
is($rpt->{heat_index_f}, '70', 'heat_index_f 201211210355-KTVI');
is($rpt->{http}, undef, 'http 201211210355-KTVI');
is($rpt->{intensity}, undef, 'intensity 201211210355-KTVI');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KTVI');
is($rpt->{obs}, '2012/11/21 03:55 KTVI 210355Z AUTO 32003KT 10SM SCT120 12/11 A3011 RMK AO2 ', 'obs 201211210355-KTVI');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KTVI');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211210355-KTVI');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211210355-KTVI');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211210355-KTVI');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210355-KTVI');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210355-KTVI');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KTVI');
is($rpt->{relative_humidity}, '94', 'relative_humidity 201211210355-KTVI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KTVI');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KTVI');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KTVI');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KTVI');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KTVI');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KTVI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KTVI');
is($rpt->{storm}, undef, 'storm 201211210355-KTVI');
is($rpt->{temperature_c}, '12', 'temperature_c 201211210355-KTVI');
is($rpt->{temperature_f}, '54', 'temperature_f 201211210355-KTVI');
is($rpt->{templateout}, undef, 'templateout 201211210355-KTVI');
is($rpt->{tfile}, undef, 'tfile 201211210355-KTVI');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KTVI');
is($rpt->{time}, '0355', 'time 201211210355-KTVI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KTVI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KTVI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KTVI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KTVI');
is($rpt->{winddir}, '320', 'winddir 201211210355-KTVI');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211210355-KTVI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KTVI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KTVI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KTVI');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210355-KTVI');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210355-KTVI');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210355-KTVI');
