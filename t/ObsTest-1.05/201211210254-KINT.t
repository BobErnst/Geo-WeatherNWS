#!perl -T

use strict;
use warnings;

# Test 201211210254-KINT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:54 KINT 210254Z 00000KT 10SM CLR 07/04 A3011 RMK AO2 SLP197 T00670039 51005 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:54 KINT 210254Z 00000KT 10SM CLR 07/04 A3011 RMK AO2 SLP197 T00670039 51005 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210254-KINT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210254-KINT');
is($rpt->{code}, 'KINT', 'code 201211210254-KINT');
is($rpt->{conditions1}, undef, 'conditions1 201211210254-KINT');
is($rpt->{conditions2}, undef, 'conditions2 201211210254-KINT');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210254-KINT');
is($rpt->{day}, '21', 'day 201211210254-KINT');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211210254-KINT');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211210254-KINT');
is($rpt->{error}, undef, 'error 201211210254-KINT');
is($rpt->{errortext}, undef, 'errortext 201211210254-KINT');
is($rpt->{eventbe}, undef, 'eventbe 201211210254-KINT');
is($rpt->{heat_index_c}, '42', 'heat_index_c 201211210254-KINT');
is($rpt->{heat_index_f}, '107', 'heat_index_f 201211210254-KINT');
is($rpt->{http}, undef, 'http 201211210254-KINT');
is($rpt->{intensity}, undef, 'intensity 201211210254-KINT');
is($rpt->{maintenance}, undef, 'maintenance 201211210254-KINT');
is($rpt->{obs}, '2012/11/21 02:54 KINT 210254Z 00000KT 10SM CLR 07/04 A3011 RMK AO2 SLP197 T00670039 51005 ', 'obs 201211210254-KINT');
is($rpt->{precipslr}, undef, 'precipslr 201211210254-KINT');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211210254-KINT');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211210254-KINT');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211210254-KINT');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210254-KINT');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210254-KINT');
is($rpt->{ptemperature}, 'T00670039', 'ptemperature 201211210254-KINT');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210254-KINT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.7','T00670039','51005'], 'remark_arrayref 201211210254-KINT');
is($rpt->{slp_inhg}, '30.11', 'slp_inhg 201211210254-KINT');
is($rpt->{slp_kgcm}, '1.039808484', 'slp_kgcm 201211210254-KINT');
is($rpt->{slp_lbin}, '14.78952486', 'slp_lbin 201211210254-KINT');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210254-KINT');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210254-KINT');
is($rpt->{station_type}, 'Automated', 'station_type 201211210254-KINT');
is($rpt->{storm}, undef, 'storm 201211210254-KINT');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210254-KINT');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210254-KINT');
is($rpt->{templateout}, undef, 'templateout 201211210254-KINT');
is($rpt->{tfile}, undef, 'tfile 201211210254-KINT');
is($rpt->{thpressure}, '51005', 'thpressure 201211210254-KINT');
is($rpt->{time}, '0254', 'time 201211210254-KINT');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210254-KINT');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210254-KINT');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210254-KINT');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210254-KINT');
is($rpt->{winddir}, '0', 'winddir 201211210254-KINT');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210254-KINT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210254-KINT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210254-KINT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210254-KINT');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210254-KINT');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210254-KINT');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210254-KINT');
