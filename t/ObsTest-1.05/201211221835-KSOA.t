#!perl -T

use strict;
use warnings;

# Test 201211221835-KSOA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 18:35 KSOA 221835Z AUTO 20012G17KT 10SM CLR 23/13 A3014 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 18:35 KSOA 221835Z AUTO 20012G17KT 10SM CLR 23/13 A3014 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211221835-KSOA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211221835-KSOA');
is($rpt->{code}, 'KSOA', 'code 201211221835-KSOA');
is($rpt->{conditions1}, undef, 'conditions1 201211221835-KSOA');
is($rpt->{conditions2}, undef, 'conditions2 201211221835-KSOA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211221835-KSOA');
is($rpt->{day}, '22', 'day 201211221835-KSOA');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211221835-KSOA');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211221835-KSOA');
is($rpt->{error}, undef, 'error 201211221835-KSOA');
is($rpt->{errortext}, undef, 'errortext 201211221835-KSOA');
is($rpt->{eventbe}, undef, 'eventbe 201211221835-KSOA');
is($rpt->{heat_index_c}, '25', 'heat_index_c 201211221835-KSOA');
is($rpt->{heat_index_f}, '77', 'heat_index_f 201211221835-KSOA');
is($rpt->{http}, undef, 'http 201211221835-KSOA');
is($rpt->{intensity}, undef, 'intensity 201211221835-KSOA');
is($rpt->{maintenance}, undef, 'maintenance 201211221835-KSOA');
is($rpt->{obs}, '2012/11/22 18:35 KSOA 221835Z AUTO 20012G17KT 10SM CLR 23/13 A3014 RMK AO2 ', 'obs 201211221835-KSOA');
is($rpt->{precipslr}, undef, 'precipslr 201211221835-KSOA');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211221835-KSOA');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211221835-KSOA');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211221835-KSOA');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211221835-KSOA');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211221835-KSOA');
is($rpt->{ptemperature}, undef, 'ptemperature 201211221835-KSOA');
is($rpt->{relative_humidity}, '53', 'relative_humidity 201211221835-KSOA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211221835-KSOA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211221835-KSOA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211221835-KSOA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211221835-KSOA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211221835-KSOA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211221835-KSOA');
is($rpt->{station_type}, 'Automated', 'station_type 201211221835-KSOA');
is($rpt->{storm}, undef, 'storm 201211221835-KSOA');
is($rpt->{temperature_c}, '23', 'temperature_c 201211221835-KSOA');
is($rpt->{temperature_f}, '73', 'temperature_f 201211221835-KSOA');
is($rpt->{templateout}, undef, 'templateout 201211221835-KSOA');
is($rpt->{tfile}, undef, 'tfile 201211221835-KSOA');
is($rpt->{thpressure}, undef, 'thpressure 201211221835-KSOA');
is($rpt->{time}, '1835', 'time 201211221835-KSOA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211221835-KSOA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211221835-KSOA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211221835-KSOA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211221835-KSOA');
is($rpt->{winddir}, '200', 'winddir 201211221835-KSOA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211221835-KSOA');
is($rpt->{windgustkmh}, '31', 'windgustkmh 201211221835-KSOA');
is($rpt->{windgustkts}, '17', 'windgustkts 201211221835-KSOA');
is($rpt->{windgustmph}, '20', 'windgustmph 201211221835-KSOA');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211221835-KSOA');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211221835-KSOA');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211221835-KSOA');
