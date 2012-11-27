#!perl -T

use strict;
use warnings;

# Test 201211230415-KT82
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 04:15 KT82 230415Z AUTO 00000KT 10SM CLR 12/11 A3014 RMK AO2 T01160112 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 04:15 KT82 230415Z AUTO 00000KT 10SM CLR 12/11 A3014 RMK AO2 T01160112 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230415-KT82');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230415-KT82');
is($rpt->{code}, 'KT82', 'code 201211230415-KT82');
is($rpt->{conditions1}, undef, 'conditions1 201211230415-KT82');
is($rpt->{conditions2}, undef, 'conditions2 201211230415-KT82');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230415-KT82');
is($rpt->{day}, '23', 'day 201211230415-KT82');
is($rpt->{dewpoint_c}, '11', 'dewpoint_c 201211230415-KT82');
is($rpt->{dewpoint_f}, '52', 'dewpoint_f 201211230415-KT82');
is($rpt->{error}, undef, 'error 201211230415-KT82');
is($rpt->{errortext}, undef, 'errortext 201211230415-KT82');
is($rpt->{eventbe}, undef, 'eventbe 201211230415-KT82');
is($rpt->{heat_index_c}, '21', 'heat_index_c 201211230415-KT82');
is($rpt->{heat_index_f}, '70', 'heat_index_f 201211230415-KT82');
is($rpt->{http}, undef, 'http 201211230415-KT82');
is($rpt->{intensity}, undef, 'intensity 201211230415-KT82');
is($rpt->{maintenance}, undef, 'maintenance 201211230415-KT82');
is($rpt->{obs}, '2012/11/23 04:15 KT82 230415Z AUTO 00000KT 10SM CLR 12/11 A3014 RMK AO2 T01160112 ', 'obs 201211230415-KT82');
is($rpt->{precipslr}, undef, 'precipslr 201211230415-KT82');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211230415-KT82');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211230415-KT82');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211230415-KT82');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211230415-KT82');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211230415-KT82');
is($rpt->{ptemperature}, 'T01160112', 'ptemperature 201211230415-KT82');
is($rpt->{relative_humidity}, '94', 'relative_humidity 201211230415-KT82');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01160112'], 'remark_arrayref 201211230415-KT82');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211230415-KT82');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211230415-KT82');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211230415-KT82');
is($rpt->{slp_mb}, undef, 'slp_mb 201211230415-KT82');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211230415-KT82');
is($rpt->{station_type}, 'Automated', 'station_type 201211230415-KT82');
is($rpt->{storm}, undef, 'storm 201211230415-KT82');
is($rpt->{temperature_c}, '12', 'temperature_c 201211230415-KT82');
is($rpt->{temperature_f}, '54', 'temperature_f 201211230415-KT82');
is($rpt->{templateout}, undef, 'templateout 201211230415-KT82');
is($rpt->{tfile}, undef, 'tfile 201211230415-KT82');
is($rpt->{thpressure}, undef, 'thpressure 201211230415-KT82');
is($rpt->{time}, '0415', 'time 201211230415-KT82');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230415-KT82');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230415-KT82');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230415-KT82');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230415-KT82');
is($rpt->{winddir}, '0', 'winddir 201211230415-KT82');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211230415-KT82');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230415-KT82');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230415-KT82');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230415-KT82');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211230415-KT82');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211230415-KT82');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211230415-KT82');
