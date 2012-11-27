#!perl -T

use strict;
use warnings;

# Test 201211210255-KVBT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:55 KVBT 210255Z AUTO 01004KT 10SM CLR 10/04 A3020 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:55 KVBT 210255Z AUTO 01004KT 10SM CLR 10/04 A3020 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210255-KVBT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210255-KVBT');
is($rpt->{code}, 'KVBT', 'code 201211210255-KVBT');
is($rpt->{conditions1}, undef, 'conditions1 201211210255-KVBT');
is($rpt->{conditions2}, undef, 'conditions2 201211210255-KVBT');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210255-KVBT');
is($rpt->{day}, '21', 'day 201211210255-KVBT');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210255-KVBT');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210255-KVBT');
is($rpt->{error}, undef, 'error 201211210255-KVBT');
is($rpt->{errortext}, undef, 'errortext 201211210255-KVBT');
is($rpt->{eventbe}, undef, 'eventbe 201211210255-KVBT');
is($rpt->{heat_index_c}, '37', 'heat_index_c 201211210255-KVBT');
is($rpt->{heat_index_f}, '99', 'heat_index_f 201211210255-KVBT');
is($rpt->{http}, undef, 'http 201211210255-KVBT');
is($rpt->{intensity}, undef, 'intensity 201211210255-KVBT');
is($rpt->{maintenance}, undef, 'maintenance 201211210255-KVBT');
is($rpt->{obs}, '2012/11/21 02:55 KVBT 210255Z AUTO 01004KT 10SM CLR 10/04 A3020 RMK AO1 ', 'obs 201211210255-KVBT');
is($rpt->{precipslr}, undef, 'precipslr 201211210255-KVBT');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211210255-KVBT');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211210255-KVBT');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211210255-KVBT');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210255-KVBT');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210255-KVBT');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210255-KVBT');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211210255-KVBT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211210255-KVBT');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210255-KVBT');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210255-KVBT');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210255-KVBT');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210255-KVBT');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210255-KVBT');
is($rpt->{station_type}, 'Automated', 'station_type 201211210255-KVBT');
is($rpt->{storm}, undef, 'storm 201211210255-KVBT');
is($rpt->{temperature_c}, '10', 'temperature_c 201211210255-KVBT');
is($rpt->{temperature_f}, '50', 'temperature_f 201211210255-KVBT');
is($rpt->{templateout}, undef, 'templateout 201211210255-KVBT');
is($rpt->{tfile}, undef, 'tfile 201211210255-KVBT');
is($rpt->{thpressure}, undef, 'thpressure 201211210255-KVBT');
is($rpt->{time}, '0255', 'time 201211210255-KVBT');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210255-KVBT');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210255-KVBT');
is($rpt->{windchill_c}, '9', 'windchill_c 201211210255-KVBT');
is($rpt->{windchill_f}, '48', 'windchill_f 201211210255-KVBT');
is($rpt->{winddir}, '10', 'winddir 201211210255-KVBT');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210255-KVBT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210255-KVBT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210255-KVBT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210255-KVBT');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210255-KVBT');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210255-KVBT');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210255-KVBT');
