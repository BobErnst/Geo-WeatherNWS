#!perl -T

use strict;
use warnings;

# Test 201211210355-KBYS
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KBYS 210355Z AUTO 02002KT 10SM CLR 15/02 A3007 RMK AO2 SLP176 T01510021 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KBYS 210355Z AUTO 02002KT 10SM CLR 15/02 A3007 RMK AO2 SLP176 T01510021 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KBYS');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KBYS');
is($rpt->{code}, 'KBYS', 'code 201211210355-KBYS');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KBYS');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KBYS');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KBYS');
is($rpt->{day}, '21', 'day 201211210355-KBYS');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210355-KBYS');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210355-KBYS');
is($rpt->{error}, undef, 'error 201211210355-KBYS');
is($rpt->{errortext}, undef, 'errortext 201211210355-KBYS');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KBYS');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211210355-KBYS');
is($rpt->{heat_index_f}, '83', 'heat_index_f 201211210355-KBYS');
is($rpt->{http}, undef, 'http 201211210355-KBYS');
is($rpt->{intensity}, undef, 'intensity 201211210355-KBYS');
is($rpt->{maintenance}, '$', 'maintenance 201211210355-KBYS');
is($rpt->{obs}, '2012/11/21 03:55 KBYS 210355Z AUTO 02002KT 10SM CLR 15/02 A3007 RMK AO2 SLP176 T01510021 $ ', 'obs 201211210355-KBYS');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KBYS');
is($rpt->{pressure_inhg}, '30.07', 'pressure_inhg 201211210355-KBYS');
is($rpt->{pressure_kgcm}, '1.038365212', 'pressure_kgcm 201211210355-KBYS');
is($rpt->{pressure_lbin}, '14.76900078', 'pressure_lbin 201211210355-KBYS');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210355-KBYS');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210355-KBYS');
is($rpt->{ptemperature}, 'T01510021', 'ptemperature 201211210355-KBYS');
is($rpt->{relative_humidity}, '41', 'relative_humidity 201211210355-KBYS');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1017.6','T01510021','$'], 'remark_arrayref 201211210355-KBYS');
is($rpt->{slp_inhg}, '30.04', 'slp_inhg 201211210355-KBYS');
is($rpt->{slp_kgcm}, '1.037667072', 'slp_kgcm 201211210355-KBYS');
is($rpt->{slp_lbin}, '14.75906688', 'slp_lbin 201211210355-KBYS');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211210355-KBYS');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211210355-KBYS');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KBYS');
is($rpt->{storm}, undef, 'storm 201211210355-KBYS');
is($rpt->{temperature_c}, '15', 'temperature_c 201211210355-KBYS');
is($rpt->{temperature_f}, '59', 'temperature_f 201211210355-KBYS');
is($rpt->{templateout}, undef, 'templateout 201211210355-KBYS');
is($rpt->{tfile}, undef, 'tfile 201211210355-KBYS');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KBYS');
is($rpt->{time}, '0355', 'time 201211210355-KBYS');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KBYS');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KBYS');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KBYS');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KBYS');
is($rpt->{winddir}, '20', 'winddir 201211210355-KBYS');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210355-KBYS');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KBYS');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KBYS');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KBYS');
is($rpt->{windspeedkmh}, '4', 'windspeedkmh 201211210355-KBYS');
is($rpt->{windspeedkts}, '2', 'windspeedkts 201211210355-KBYS');
is($rpt->{windspeedmph}, '2', 'windspeedmph 201211210355-KBYS');
