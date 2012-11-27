#!perl -T

use strict;
use warnings;

# Test 201211210355-KJYR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KJYR 210355Z AUTO 20009KT 10SM CLR 08/01 A3012 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KJYR 210355Z AUTO 20009KT 10SM CLR 08/01 A3012 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KJYR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KJYR');
is($rpt->{code}, 'KJYR', 'code 201211210355-KJYR');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KJYR');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KJYR');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KJYR');
is($rpt->{day}, '21', 'day 201211210355-KJYR');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210355-KJYR');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210355-KJYR');
is($rpt->{error}, undef, 'error 201211210355-KJYR');
is($rpt->{errortext}, undef, 'errortext 201211210355-KJYR');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KJYR');
is($rpt->{heat_index_c}, '43', 'heat_index_c 201211210355-KJYR');
is($rpt->{heat_index_f}, '109', 'heat_index_f 201211210355-KJYR');
is($rpt->{http}, undef, 'http 201211210355-KJYR');
is($rpt->{intensity}, undef, 'intensity 201211210355-KJYR');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KJYR');
is($rpt->{obs}, '2012/11/21 03:55 KJYR 210355Z AUTO 20009KT 10SM CLR 08/01 A3012 RMK AO2 ', 'obs 201211210355-KJYR');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KJYR');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211210355-KJYR');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211210355-KJYR');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211210355-KJYR');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210355-KJYR');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210355-KJYR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KJYR');
is($rpt->{relative_humidity}, '61', 'relative_humidity 201211210355-KJYR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-KJYR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KJYR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KJYR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KJYR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KJYR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KJYR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KJYR');
is($rpt->{storm}, undef, 'storm 201211210355-KJYR');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210355-KJYR');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210355-KJYR');
is($rpt->{templateout}, undef, 'templateout 201211210355-KJYR');
is($rpt->{tfile}, undef, 'tfile 201211210355-KJYR');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KJYR');
is($rpt->{time}, '0355', 'time 201211210355-KJYR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KJYR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KJYR');
is($rpt->{windchill_c}, '5', 'windchill_c 201211210355-KJYR');
is($rpt->{windchill_f}, '42', 'windchill_f 201211210355-KJYR');
is($rpt->{winddir}, '200', 'winddir 201211210355-KJYR');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210355-KJYR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KJYR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KJYR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KJYR');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211210355-KJYR');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211210355-KJYR');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211210355-KJYR');
