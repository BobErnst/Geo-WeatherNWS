#!perl -T

use strict;
use warnings;

# Test 201211232153-KJBR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 21:53 KJBR 232153Z AUTO 33013G21KT 10SM CLR 12/M01 A3027 RMK AO2 SLP250 T01221006 PNO $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 21:53 KJBR 232153Z AUTO 33013G21KT 10SM CLR 12/M01 A3027 RMK AO2 SLP250 T01221006 PNO $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211232153-KJBR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211232153-KJBR');
is($rpt->{code}, 'KJBR', 'code 201211232153-KJBR');
is($rpt->{conditions1}, undef, 'conditions1 201211232153-KJBR');
is($rpt->{conditions2}, undef, 'conditions2 201211232153-KJBR');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211232153-KJBR');
is($rpt->{day}, '23', 'day 201211232153-KJBR');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211232153-KJBR');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211232153-KJBR');
is($rpt->{error}, undef, 'error 201211232153-KJBR');
is($rpt->{errortext}, undef, 'errortext 201211232153-KJBR');
is($rpt->{eventbe}, undef, 'eventbe 201211232153-KJBR');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211232153-KJBR');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211232153-KJBR');
is($rpt->{http}, undef, 'http 201211232153-KJBR');
is($rpt->{intensity}, undef, 'intensity 201211232153-KJBR');
is($rpt->{maintenance}, '$', 'maintenance 201211232153-KJBR');
is($rpt->{obs}, '2012/11/23 21:53 KJBR 232153Z AUTO 33013G21KT 10SM CLR 12/M01 A3027 RMK AO2 SLP250 T01221006 PNO $ ', 'obs 201211232153-KJBR');
is($rpt->{precipslr}, undef, 'precipslr 201211232153-KJBR');
is($rpt->{pressure_inhg}, '30.27', 'pressure_inhg 201211232153-KJBR');
is($rpt->{pressure_kgcm}, '1.045271532', 'pressure_kgcm 201211232153-KJBR');
is($rpt->{pressure_lbin}, '14.86723158', 'pressure_lbin 201211232153-KJBR');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211232153-KJBR');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211232153-KJBR');
is($rpt->{ptemperature}, 'T01221006', 'ptemperature 201211232153-KJBR');
is($rpt->{relative_humidity}, '41', 'relative_humidity 201211232153-KJBR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1025,'T01221006','PNO','$'], 'remark_arrayref 201211232153-KJBR');
is($rpt->{slp_inhg}, '30.26', 'slp_inhg 201211232153-KJBR');
is($rpt->{slp_kgcm}, '1.045213', 'slp_kgcm 201211232153-KJBR');
is($rpt->{slp_lbin}, '14.866395', 'slp_lbin 201211232153-KJBR');
is($rpt->{slp_mb}, '1025', 'slp_mb 201211232153-KJBR');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211232153-KJBR');
is($rpt->{station_type}, 'Automated', 'station_type 201211232153-KJBR');
is($rpt->{storm}, undef, 'storm 201211232153-KJBR');
is($rpt->{temperature_c}, '12', 'temperature_c 201211232153-KJBR');
is($rpt->{temperature_f}, '54', 'temperature_f 201211232153-KJBR');
is($rpt->{templateout}, undef, 'templateout 201211232153-KJBR');
is($rpt->{tfile}, undef, 'tfile 201211232153-KJBR');
is($rpt->{thpressure}, undef, 'thpressure 201211232153-KJBR');
is($rpt->{time}, '2153', 'time 201211232153-KJBR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211232153-KJBR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211232153-KJBR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211232153-KJBR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211232153-KJBR');
is($rpt->{winddir}, '330', 'winddir 201211232153-KJBR');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211232153-KJBR');
is($rpt->{windgustkmh}, '39', 'windgustkmh 201211232153-KJBR');
is($rpt->{windgustkts}, '21', 'windgustkts 201211232153-KJBR');
is($rpt->{windgustmph}, '24', 'windgustmph 201211232153-KJBR');
is($rpt->{windspeedkmh}, '24', 'windspeedkmh 201211232153-KJBR');
is($rpt->{windspeedkts}, '13', 'windspeedkts 201211232153-KJBR');
is($rpt->{windspeedmph}, '15', 'windspeedmph 201211232153-KJBR');
