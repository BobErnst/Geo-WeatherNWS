#!perl -T

use strict;
use warnings;

# Test 201211210353-KCEZ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KCEZ 210353Z AUTO 00000KT 10SM CLR M03/M08 A3027 RMK AO2 SLP255 T10281083 FZRANO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KCEZ 210353Z AUTO 00000KT 10SM CLR M03/M08 A3027 RMK AO2 SLP255 T10281083 FZRANO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210353-KCEZ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210353-KCEZ');
is($rpt->{code}, 'KCEZ', 'code 201211210353-KCEZ');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KCEZ');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KCEZ');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210353-KCEZ');
is($rpt->{day}, '21', 'day 201211210353-KCEZ');
is($rpt->{dewpoint_c}, '-8', 'dewpoint_c 201211210353-KCEZ');
is($rpt->{dewpoint_f}, '18', 'dewpoint_f 201211210353-KCEZ');
is($rpt->{error}, undef, 'error 201211210353-KCEZ');
is($rpt->{errortext}, undef, 'errortext 201211210353-KCEZ');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KCEZ');
is($rpt->{heat_index_c}, '90', 'heat_index_c 201211210353-KCEZ');
is($rpt->{heat_index_f}, '195', 'heat_index_f 201211210353-KCEZ');
is($rpt->{http}, undef, 'http 201211210353-KCEZ');
is($rpt->{intensity}, undef, 'intensity 201211210353-KCEZ');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KCEZ');
is($rpt->{obs}, '2012/11/21 03:53 KCEZ 210353Z AUTO 00000KT 10SM CLR M03/M08 A3027 RMK AO2 SLP255 T10281083 FZRANO ', 'obs 201211210353-KCEZ');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KCEZ');
is($rpt->{pressure_inhg}, '30.27', 'pressure_inhg 201211210353-KCEZ');
is($rpt->{pressure_kgcm}, '1.045271532', 'pressure_kgcm 201211210353-KCEZ');
is($rpt->{pressure_lbin}, '14.86723158', 'pressure_lbin 201211210353-KCEZ');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211210353-KCEZ');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211210353-KCEZ');
is($rpt->{ptemperature}, 'T10281083', 'ptemperature 201211210353-KCEZ');
is($rpt->{relative_humidity}, '68', 'relative_humidity 201211210353-KCEZ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1025.5','T10281083','FZRANO'], 'remark_arrayref 201211210353-KCEZ');
is($rpt->{slp_inhg}, '30.28', 'slp_inhg 201211210353-KCEZ');
is($rpt->{slp_kgcm}, '1.04572286', 'slp_kgcm 201211210353-KCEZ');
is($rpt->{slp_lbin}, '14.8736469', 'slp_lbin 201211210353-KCEZ');
is($rpt->{slp_mb}, '1026', 'slp_mb 201211210353-KCEZ');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211210353-KCEZ');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KCEZ');
is($rpt->{storm}, undef, 'storm 201211210353-KCEZ');
is($rpt->{temperature_c}, '-3', 'temperature_c 201211210353-KCEZ');
is($rpt->{temperature_f}, '27', 'temperature_f 201211210353-KCEZ');
is($rpt->{templateout}, undef, 'templateout 201211210353-KCEZ');
is($rpt->{tfile}, undef, 'tfile 201211210353-KCEZ');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KCEZ');
is($rpt->{time}, '0353', 'time 201211210353-KCEZ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KCEZ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KCEZ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KCEZ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KCEZ');
is($rpt->{winddir}, '0', 'winddir 201211210353-KCEZ');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KCEZ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KCEZ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KCEZ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KCEZ');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KCEZ');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KCEZ');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KCEZ');
