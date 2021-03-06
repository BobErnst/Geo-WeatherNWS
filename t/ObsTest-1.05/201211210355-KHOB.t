#!perl -T

use strict;
use warnings;

# Test 201211210355-KHOB
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KHOB 210355Z AUTO 07005KT 10SM CLR 10/M04 A3026 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KHOB 210355Z AUTO 07005KT 10SM CLR 10/M04 A3026 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KHOB');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KHOB');
is($rpt->{code}, 'KHOB', 'code 201211210355-KHOB');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KHOB');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KHOB');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KHOB');
is($rpt->{day}, '21', 'day 201211210355-KHOB');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211210355-KHOB');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211210355-KHOB');
is($rpt->{error}, undef, 'error 201211210355-KHOB');
is($rpt->{errortext}, undef, 'errortext 201211210355-KHOB');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KHOB');
is($rpt->{heat_index_c}, '34', 'heat_index_c 201211210355-KHOB');
is($rpt->{heat_index_f}, '93', 'heat_index_f 201211210355-KHOB');
is($rpt->{http}, undef, 'http 201211210355-KHOB');
is($rpt->{intensity}, undef, 'intensity 201211210355-KHOB');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KHOB');
is($rpt->{obs}, '2012/11/21 03:55 KHOB 210355Z AUTO 07005KT 10SM CLR 10/M04 A3026 RMK AO2 ', 'obs 201211210355-KHOB');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KHOB');
is($rpt->{pressure_inhg}, '30.26', 'pressure_inhg 201211210355-KHOB');
is($rpt->{pressure_kgcm}, '1.044926216', 'pressure_kgcm 201211210355-KHOB');
is($rpt->{pressure_lbin}, '14.86232004', 'pressure_lbin 201211210355-KHOB');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211210355-KHOB');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211210355-KHOB');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KHOB');
is($rpt->{relative_humidity}, '37', 'relative_humidity 201211210355-KHOB');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KHOB');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KHOB');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KHOB');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KHOB');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KHOB');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KHOB');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KHOB');
is($rpt->{storm}, undef, 'storm 201211210355-KHOB');
is($rpt->{temperature_c}, '10', 'temperature_c 201211210355-KHOB');
is($rpt->{temperature_f}, '50', 'temperature_f 201211210355-KHOB');
is($rpt->{templateout}, undef, 'templateout 201211210355-KHOB');
is($rpt->{tfile}, undef, 'tfile 201211210355-KHOB');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KHOB');
is($rpt->{time}, '0355', 'time 201211210355-KHOB');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KHOB');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KHOB');
is($rpt->{windchill_c}, '9', 'windchill_c 201211210355-KHOB');
is($rpt->{windchill_f}, '48', 'windchill_f 201211210355-KHOB');
is($rpt->{winddir}, '70', 'winddir 201211210355-KHOB');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211210355-KHOB');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KHOB');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KHOB');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KHOB');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210355-KHOB');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210355-KHOB');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210355-KHOB');
