#!perl -T

use strict;
use warnings;

# Test 201211210352-KBAN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:52 KBAN 210352Z AUTO 24018G30KT 10SM CLR 08/M09 A3004 RMK AO2 PK WND 22030/0350 SLP140 T00781089 TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:52 KBAN 210352Z AUTO 24018G30KT 10SM CLR 08/M09 A3004 RMK AO2 PK WND 22030/0350 SLP140 T00781089 TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210352-KBAN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210352-KBAN');
is($rpt->{code}, 'KBAN', 'code 201211210352-KBAN');
is($rpt->{conditions1}, undef, 'conditions1 201211210352-KBAN');
is($rpt->{conditions2}, undef, 'conditions2 201211210352-KBAN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210352-KBAN');
is($rpt->{day}, '21', 'day 201211210352-KBAN');
is($rpt->{dewpoint_c}, '-9', 'dewpoint_c 201211210352-KBAN');
is($rpt->{dewpoint_f}, '16', 'dewpoint_f 201211210352-KBAN');
is($rpt->{error}, undef, 'error 201211210352-KBAN');
is($rpt->{errortext}, undef, 'errortext 201211210352-KBAN');
is($rpt->{eventbe}, undef, 'eventbe 201211210352-KBAN');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211210352-KBAN');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211210352-KBAN');
is($rpt->{http}, undef, 'http 201211210352-KBAN');
is($rpt->{intensity}, undef, 'intensity 201211210352-KBAN');
is($rpt->{maintenance}, undef, 'maintenance 201211210352-KBAN');
is($rpt->{obs}, '2012/11/21 03:52 KBAN 210352Z AUTO 24018G30KT 10SM CLR 08/M09 A3004 RMK AO2 PK WND 22030/0350 SLP140 T00781089 TSNO  ', 'obs 201211210352-KBAN');
is($rpt->{precipslr}, undef, 'precipslr 201211210352-KBAN');
is($rpt->{pressure_inhg}, '30.04', 'pressure_inhg 201211210352-KBAN');
is($rpt->{pressure_kgcm}, '1.037329264', 'pressure_kgcm 201211210352-KBAN');
is($rpt->{pressure_lbin}, '14.75426616', 'pressure_lbin 201211210352-KBAN');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211210352-KBAN');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210352-KBAN');
is($rpt->{ptemperature}, 'T00781089', 'ptemperature 201211210352-KBAN');
is($rpt->{relative_humidity}, '29', 'relative_humidity 201211210352-KBAN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','PK','WND','22030/0350',1014,'T00781089','TSNO'], 'remark_arrayref 201211210352-KBAN');
is($rpt->{slp_inhg}, '29.94', 'slp_inhg 201211210352-KBAN');
is($rpt->{slp_kgcm}, '1.03399608', 'slp_kgcm 201211210352-KBAN');
is($rpt->{slp_lbin}, '14.7068532', 'slp_lbin 201211210352-KBAN');
is($rpt->{slp_mb}, '1014', 'slp_mb 201211210352-KBAN');
is($rpt->{slp_mmhg}, '761', 'slp_mmhg 201211210352-KBAN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210352-KBAN');
is($rpt->{storm}, 'TSNO', 'storm 201211210352-KBAN');
is($rpt->{temperature_c}, '08', 'temperature_c 201211210352-KBAN');
is($rpt->{temperature_f}, '46', 'temperature_f 201211210352-KBAN');
is($rpt->{templateout}, undef, 'templateout 201211210352-KBAN');
is($rpt->{tfile}, undef, 'tfile 201211210352-KBAN');
is($rpt->{thpressure}, undef, 'thpressure 201211210352-KBAN');
is($rpt->{time}, '0352', 'time 201211210352-KBAN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210352-KBAN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210352-KBAN');
is($rpt->{windchill_c}, '4', 'windchill_c 201211210352-KBAN');
is($rpt->{windchill_f}, '39', 'windchill_f 201211210352-KBAN');
is($rpt->{winddir}, '240', 'winddir 201211210352-KBAN');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211210352-KBAN');
is($rpt->{windgustkmh}, '56', 'windgustkmh 201211210352-KBAN');
is($rpt->{windgustkts}, '30', 'windgustkts 201211210352-KBAN');
is($rpt->{windgustmph}, '35', 'windgustmph 201211210352-KBAN');
is($rpt->{windspeedkmh}, '33', 'windspeedkmh 201211210352-KBAN');
is($rpt->{windspeedkts}, '18', 'windspeedkts 201211210352-KBAN');
is($rpt->{windspeedmph}, '21', 'windspeedmph 201211210352-KBAN');
