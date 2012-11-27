#!perl -T

use strict;
use warnings;

# Test 201211220615-KLRJ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:15 KLRJ 220615Z AUTO 21009KT 10SM CLR 13/06 A2973 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:15 KLRJ 220615Z AUTO 21009KT 10SM CLR 13/06 A2973 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220615-KLRJ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220615-KLRJ');
is($rpt->{code}, 'KLRJ', 'code 201211220615-KLRJ');
is($rpt->{conditions1}, undef, 'conditions1 201211220615-KLRJ');
is($rpt->{conditions2}, undef, 'conditions2 201211220615-KLRJ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220615-KLRJ');
is($rpt->{day}, '22', 'day 201211220615-KLRJ');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211220615-KLRJ');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211220615-KLRJ');
is($rpt->{error}, undef, 'error 201211220615-KLRJ');
is($rpt->{errortext}, undef, 'errortext 201211220615-KLRJ');
is($rpt->{eventbe}, undef, 'eventbe 201211220615-KLRJ');
is($rpt->{heat_index_c}, '31', 'heat_index_c 201211220615-KLRJ');
is($rpt->{heat_index_f}, '88', 'heat_index_f 201211220615-KLRJ');
is($rpt->{http}, undef, 'http 201211220615-KLRJ');
is($rpt->{intensity}, undef, 'intensity 201211220615-KLRJ');
is($rpt->{maintenance}, undef, 'maintenance 201211220615-KLRJ');
is($rpt->{obs}, '2012/11/22 06:15 KLRJ 220615Z AUTO 21009KT 10SM CLR 13/06 A2973 RMK AO2 ', 'obs 201211220615-KLRJ');
is($rpt->{precipslr}, undef, 'precipslr 201211220615-KLRJ');
is($rpt->{pressure_inhg}, '29.73', 'pressure_inhg 201211220615-KLRJ');
is($rpt->{pressure_kgcm}, '1.026624468', 'pressure_kgcm 201211220615-KLRJ');
is($rpt->{pressure_lbin}, '14.60200842', 'pressure_lbin 201211220615-KLRJ');
is($rpt->{pressure_mb}, '1007', 'pressure_mb 201211220615-KLRJ');
is($rpt->{pressure_mmhg}, '755', 'pressure_mmhg 201211220615-KLRJ');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220615-KLRJ');
is($rpt->{relative_humidity}, '62', 'relative_humidity 201211220615-KLRJ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220615-KLRJ');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220615-KLRJ');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220615-KLRJ');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220615-KLRJ');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220615-KLRJ');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220615-KLRJ');
is($rpt->{station_type}, 'Automated', 'station_type 201211220615-KLRJ');
is($rpt->{storm}, undef, 'storm 201211220615-KLRJ');
is($rpt->{temperature_c}, '13', 'temperature_c 201211220615-KLRJ');
is($rpt->{temperature_f}, '55', 'temperature_f 201211220615-KLRJ');
is($rpt->{templateout}, undef, 'templateout 201211220615-KLRJ');
is($rpt->{tfile}, undef, 'tfile 201211220615-KLRJ');
is($rpt->{thpressure}, undef, 'thpressure 201211220615-KLRJ');
is($rpt->{time}, '0615', 'time 201211220615-KLRJ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220615-KLRJ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220615-KLRJ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220615-KLRJ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220615-KLRJ');
is($rpt->{winddir}, '210', 'winddir 201211220615-KLRJ');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211220615-KLRJ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220615-KLRJ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220615-KLRJ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220615-KLRJ');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211220615-KLRJ');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211220615-KLRJ');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211220615-KLRJ');
