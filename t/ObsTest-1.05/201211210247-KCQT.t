#!perl -T

use strict;
use warnings;

# Test 201211210247-KCQT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:47 KCQT 210247Z AUTO 00000KT 10SM CLR 16/12 A3005 RMK AO2 SLP176 T01560122 53006 TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:47 KCQT 210247Z AUTO 00000KT 10SM CLR 16/12 A3005 RMK AO2 SLP176 T01560122 53006 TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210247-KCQT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210247-KCQT');
is($rpt->{code}, 'KCQT', 'code 201211210247-KCQT');
is($rpt->{conditions1}, undef, 'conditions1 201211210247-KCQT');
is($rpt->{conditions2}, undef, 'conditions2 201211210247-KCQT');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210247-KCQT');
is($rpt->{day}, '21', 'day 201211210247-KCQT');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211210247-KCQT');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211210247-KCQT');
is($rpt->{error}, undef, 'error 201211210247-KCQT');
is($rpt->{errortext}, undef, 'errortext 201211210247-KCQT');
is($rpt->{eventbe}, undef, 'eventbe 201211210247-KCQT');
is($rpt->{heat_index_c}, '23', 'heat_index_c 201211210247-KCQT');
is($rpt->{heat_index_f}, '74', 'heat_index_f 201211210247-KCQT');
is($rpt->{http}, undef, 'http 201211210247-KCQT');
is($rpt->{intensity}, undef, 'intensity 201211210247-KCQT');
is($rpt->{maintenance}, undef, 'maintenance 201211210247-KCQT');
is($rpt->{obs}, '2012/11/21 02:47 KCQT 210247Z AUTO 00000KT 10SM CLR 16/12 A3005 RMK AO2 SLP176 T01560122 53006 TSNO  ', 'obs 201211210247-KCQT');
is($rpt->{precipslr}, undef, 'precipslr 201211210247-KCQT');
is($rpt->{pressure_inhg}, '30.05', 'pressure_inhg 201211210247-KCQT');
is($rpt->{pressure_kgcm}, '1.03767458', 'pressure_kgcm 201211210247-KCQT');
is($rpt->{pressure_lbin}, '14.7591777', 'pressure_lbin 201211210247-KCQT');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211210247-KCQT');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210247-KCQT');
is($rpt->{ptemperature}, 'T01560122', 'ptemperature 201211210247-KCQT');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211210247-KCQT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1017.6','T01560122','53006','TSNO'], 'remark_arrayref 201211210247-KCQT');
is($rpt->{slp_inhg}, '30.04', 'slp_inhg 201211210247-KCQT');
is($rpt->{slp_kgcm}, '1.037667072', 'slp_kgcm 201211210247-KCQT');
is($rpt->{slp_lbin}, '14.75906688', 'slp_lbin 201211210247-KCQT');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211210247-KCQT');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211210247-KCQT');
is($rpt->{station_type}, 'Automated', 'station_type 201211210247-KCQT');
is($rpt->{storm}, 'TSNO', 'storm 201211210247-KCQT');
is($rpt->{temperature_c}, '16', 'temperature_c 201211210247-KCQT');
is($rpt->{temperature_f}, '61', 'temperature_f 201211210247-KCQT');
is($rpt->{templateout}, undef, 'templateout 201211210247-KCQT');
is($rpt->{tfile}, undef, 'tfile 201211210247-KCQT');
is($rpt->{thpressure}, '53006', 'thpressure 201211210247-KCQT');
is($rpt->{time}, '0247', 'time 201211210247-KCQT');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210247-KCQT');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210247-KCQT');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210247-KCQT');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210247-KCQT');
is($rpt->{winddir}, '0', 'winddir 201211210247-KCQT');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210247-KCQT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210247-KCQT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210247-KCQT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210247-KCQT');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210247-KCQT');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210247-KCQT');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210247-KCQT');
