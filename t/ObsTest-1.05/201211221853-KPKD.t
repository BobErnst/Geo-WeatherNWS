#!perl -T

use strict;
use warnings;

# Test 201211221853-KPKD
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 18:53 KPKD 221853Z AUTO 30019G26KT 10SM OVC008 M03/M06 A2976 RMK AO2 PK WND 29028/1843 SNB31E40 SLP096 P0000 T10331056 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 18:53 KPKD 221853Z AUTO 30019G26KT 10SM OVC008 M03/M06 A2976 RMK AO2 PK WND 29028/1843 SNB31E40 SLP096 P0000 T10331056 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211221853-KPKD');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC008'], 'cloudlevel_arrayref 201211221853-KPKD');
is($rpt->{code}, 'KPKD', 'code 201211221853-KPKD');
is($rpt->{conditions1}, undef, 'conditions1 201211221853-KPKD');
is($rpt->{conditions2}, undef, 'conditions2 201211221853-KPKD');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211221853-KPKD');
is($rpt->{day}, '22', 'day 201211221853-KPKD');
is($rpt->{dewpoint_c}, '-6', 'dewpoint_c 201211221853-KPKD');
is($rpt->{dewpoint_f}, '21', 'dewpoint_f 201211221853-KPKD');
is($rpt->{error}, undef, 'error 201211221853-KPKD');
is($rpt->{errortext}, undef, 'errortext 201211221853-KPKD');
is($rpt->{eventbe}, 'SNB31E40', 'eventbe 201211221853-KPKD');
is($rpt->{heat_index_c}, '91', 'heat_index_c 201211221853-KPKD');
is($rpt->{heat_index_f}, '195', 'heat_index_f 201211221853-KPKD');
is($rpt->{http}, undef, 'http 201211221853-KPKD');
is($rpt->{intensity}, undef, 'intensity 201211221853-KPKD');
is($rpt->{maintenance}, undef, 'maintenance 201211221853-KPKD');
is($rpt->{obs}, '2012/11/22 18:53 KPKD 221853Z AUTO 30019G26KT 10SM OVC008 M03/M06 A2976 RMK AO2 PK WND 29028/1843 SNB31E40 SLP096 P0000 T10331056 TSNO ', 'obs 201211221853-KPKD');
is($rpt->{precipslr}, 'P0000', 'precipslr 201211221853-KPKD');
is($rpt->{pressure_inhg}, '29.76', 'pressure_inhg 201211221853-KPKD');
is($rpt->{pressure_kgcm}, '1.027660416', 'pressure_kgcm 201211221853-KPKD');
is($rpt->{pressure_lbin}, '14.61674304', 'pressure_lbin 201211221853-KPKD');
is($rpt->{pressure_mb}, '1008', 'pressure_mb 201211221853-KPKD');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211221853-KPKD');
is($rpt->{ptemperature}, 'T10331056', 'ptemperature 201211221853-KPKD');
is($rpt->{relative_humidity}, '80', 'relative_humidity 201211221853-KPKD');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','PK','WND','29028/1843','SNB31E40','1009.6','P0000','T10331056','TSNO'], 'remark_arrayref 201211221853-KPKD');
is($rpt->{slp_inhg}, '29.81', 'slp_inhg 201211221853-KPKD');
is($rpt->{slp_kgcm}, '1.029509312', 'slp_kgcm 201211221853-KPKD');
is($rpt->{slp_lbin}, '14.64303648', 'slp_lbin 201211221853-KPKD');
is($rpt->{slp_mb}, '1010', 'slp_mb 201211221853-KPKD');
is($rpt->{slp_mmhg}, '757', 'slp_mmhg 201211221853-KPKD');
is($rpt->{station_type}, 'Automated', 'station_type 201211221853-KPKD');
is($rpt->{storm}, 'TSNO', 'storm 201211221853-KPKD');
is($rpt->{temperature_c}, '-3', 'temperature_c 201211221853-KPKD');
is($rpt->{temperature_f}, '27', 'temperature_f 201211221853-KPKD');
is($rpt->{templateout}, undef, 'templateout 201211221853-KPKD');
is($rpt->{tfile}, undef, 'tfile 201211221853-KPKD');
is($rpt->{thpressure}, undef, 'thpressure 201211221853-KPKD');
is($rpt->{time}, '1853', 'time 201211221853-KPKD');
is($rpt->{visibility_km}, '16', 'visibility_km 201211221853-KPKD');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211221853-KPKD');
is($rpt->{windchill_c}, '-11', 'windchill_c 201211221853-KPKD');
is($rpt->{windchill_f}, '12', 'windchill_f 201211221853-KPKD');
is($rpt->{winddir}, '300', 'winddir 201211221853-KPKD');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211221853-KPKD');
is($rpt->{windgustkmh}, '48', 'windgustkmh 201211221853-KPKD');
is($rpt->{windgustkts}, '26', 'windgustkts 201211221853-KPKD');
is($rpt->{windgustmph}, '30', 'windgustmph 201211221853-KPKD');
is($rpt->{windspeedkmh}, '35', 'windspeedkmh 201211221853-KPKD');
is($rpt->{windspeedkts}, '19', 'windspeedkts 201211221853-KPKD');
is($rpt->{windspeedmph}, '22', 'windspeedmph 201211221853-KPKD');
