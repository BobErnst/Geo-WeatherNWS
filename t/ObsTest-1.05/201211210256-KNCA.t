#!perl -T

use strict;
use warnings;

# Test 201211210256-KNCA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:56 KNCA 210256Z AUTO 36004KT 10SM CLR 11/08 A3008 RMK AO2 SLP187 T01060078 51006  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:56 KNCA 210256Z AUTO 36004KT 10SM CLR 11/08 A3008 RMK AO2 SLP187 T01060078 51006  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210256-KNCA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210256-KNCA');
is($rpt->{code}, 'KNCA', 'code 201211210256-KNCA');
is($rpt->{conditions1}, undef, 'conditions1 201211210256-KNCA');
is($rpt->{conditions2}, undef, 'conditions2 201211210256-KNCA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210256-KNCA');
is($rpt->{day}, '21', 'day 201211210256-KNCA');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210256-KNCA');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210256-KNCA');
is($rpt->{error}, undef, 'error 201211210256-KNCA');
is($rpt->{errortext}, undef, 'errortext 201211210256-KNCA');
is($rpt->{eventbe}, undef, 'eventbe 201211210256-KNCA');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201211210256-KNCA');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211210256-KNCA');
is($rpt->{http}, undef, 'http 201211210256-KNCA');
is($rpt->{intensity}, undef, 'intensity 201211210256-KNCA');
is($rpt->{maintenance}, undef, 'maintenance 201211210256-KNCA');
is($rpt->{obs}, '2012/11/21 02:56 KNCA 210256Z AUTO 36004KT 10SM CLR 11/08 A3008 RMK AO2 SLP187 T01060078 51006  ', 'obs 201211210256-KNCA');
is($rpt->{precipslr}, undef, 'precipslr 201211210256-KNCA');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211210256-KNCA');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211210256-KNCA');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211210256-KNCA');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210256-KNCA');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210256-KNCA');
is($rpt->{ptemperature}, 'T01060078', 'ptemperature 201211210256-KNCA');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211210256-KNCA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.7','T01060078','51006'], 'remark_arrayref 201211210256-KNCA');
is($rpt->{slp_inhg}, '30.08', 'slp_inhg 201211210256-KNCA');
is($rpt->{slp_kgcm}, '1.038788764', 'slp_kgcm 201211210256-KNCA');
is($rpt->{slp_lbin}, '14.77502106', 'slp_lbin 201211210256-KNCA');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211210256-KNCA');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211210256-KNCA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210256-KNCA');
is($rpt->{storm}, undef, 'storm 201211210256-KNCA');
is($rpt->{temperature_c}, '11', 'temperature_c 201211210256-KNCA');
is($rpt->{temperature_f}, '52', 'temperature_f 201211210256-KNCA');
is($rpt->{templateout}, undef, 'templateout 201211210256-KNCA');
is($rpt->{tfile}, undef, 'tfile 201211210256-KNCA');
is($rpt->{thpressure}, '51006', 'thpressure 201211210256-KNCA');
is($rpt->{time}, '0256', 'time 201211210256-KNCA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210256-KNCA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210256-KNCA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210256-KNCA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210256-KNCA');
is($rpt->{winddir}, '360', 'winddir 201211210256-KNCA');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210256-KNCA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210256-KNCA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210256-KNCA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210256-KNCA');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210256-KNCA');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210256-KNCA');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210256-KNCA');
