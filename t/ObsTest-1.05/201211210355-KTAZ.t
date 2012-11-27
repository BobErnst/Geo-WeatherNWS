#!perl -T

use strict;
use warnings;

# Test 201211210355-KTAZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KTAZ 210355Z AUTO 00000KT 7SM BKN041 11/08 A3017 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KTAZ 210355Z AUTO 00000KT 7SM BKN041 11/08 A3017 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211210355-KTAZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN041'], 'cloudlevel_arrayref 201211210355-KTAZ');
is($rpt->{code}, 'KTAZ', 'code 201211210355-KTAZ');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KTAZ');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KTAZ');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210355-KTAZ');
is($rpt->{day}, '21', 'day 201211210355-KTAZ');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210355-KTAZ');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210355-KTAZ');
is($rpt->{error}, undef, 'error 201211210355-KTAZ');
is($rpt->{errortext}, undef, 'errortext 201211210355-KTAZ');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KTAZ');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201211210355-KTAZ');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211210355-KTAZ');
is($rpt->{http}, undef, 'http 201211210355-KTAZ');
is($rpt->{intensity}, undef, 'intensity 201211210355-KTAZ');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KTAZ');
is($rpt->{obs}, '2012/11/21 03:55 KTAZ 210355Z AUTO 00000KT 7SM BKN041 11/08 A3017 RMK AO2 ', 'obs 201211210355-KTAZ');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KTAZ');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211210355-KTAZ');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211210355-KTAZ');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211210355-KTAZ');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210355-KTAZ');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-KTAZ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KTAZ');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211210355-KTAZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KTAZ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KTAZ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KTAZ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KTAZ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KTAZ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KTAZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KTAZ');
is($rpt->{storm}, undef, 'storm 201211210355-KTAZ');
is($rpt->{temperature_c}, '11', 'temperature_c 201211210355-KTAZ');
is($rpt->{temperature_f}, '52', 'temperature_f 201211210355-KTAZ');
is($rpt->{templateout}, undef, 'templateout 201211210355-KTAZ');
is($rpt->{tfile}, undef, 'tfile 201211210355-KTAZ');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KTAZ');
is($rpt->{time}, '0355', 'time 201211210355-KTAZ');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210355-KTAZ');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210355-KTAZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KTAZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KTAZ');
is($rpt->{winddir}, '0', 'winddir 201211210355-KTAZ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KTAZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KTAZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KTAZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KTAZ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KTAZ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KTAZ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KTAZ');
