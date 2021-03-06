#!perl -T

use strict;
use warnings;

# Test 201211210314-KDXX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:14 KDXX 210314Z AUTO 15007KT 10SM CLR 04/M03 A2995 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:14 KDXX 210314Z AUTO 15007KT 10SM CLR 04/M03 A2995 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210314-KDXX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210314-KDXX');
is($rpt->{code}, 'KDXX', 'code 201211210314-KDXX');
is($rpt->{conditions1}, undef, 'conditions1 201211210314-KDXX');
is($rpt->{conditions2}, undef, 'conditions2 201211210314-KDXX');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210314-KDXX');
is($rpt->{day}, '21', 'day 201211210314-KDXX');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210314-KDXX');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210314-KDXX');
is($rpt->{error}, undef, 'error 201211210314-KDXX');
is($rpt->{errortext}, undef, 'errortext 201211210314-KDXX');
is($rpt->{eventbe}, undef, 'eventbe 201211210314-KDXX');
is($rpt->{heat_index_c}, '56', 'heat_index_c 201211210314-KDXX');
is($rpt->{heat_index_f}, '133', 'heat_index_f 201211210314-KDXX');
is($rpt->{http}, undef, 'http 201211210314-KDXX');
is($rpt->{intensity}, undef, 'intensity 201211210314-KDXX');
is($rpt->{maintenance}, undef, 'maintenance 201211210314-KDXX');
is($rpt->{obs}, '2012/11/21 03:14 KDXX 210314Z AUTO 15007KT 10SM CLR 04/M03 A2995 RMK AO2 ', 'obs 201211210314-KDXX');
is($rpt->{precipslr}, undef, 'precipslr 201211210314-KDXX');
is($rpt->{pressure_inhg}, '29.95', 'pressure_inhg 201211210314-KDXX');
is($rpt->{pressure_kgcm}, '1.03422142', 'pressure_kgcm 201211210314-KDXX');
is($rpt->{pressure_lbin}, '14.7100623', 'pressure_lbin 201211210314-KDXX');
is($rpt->{pressure_mb}, '1014', 'pressure_mb 201211210314-KDXX');
is($rpt->{pressure_mmhg}, '761', 'pressure_mmhg 201211210314-KDXX');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210314-KDXX');
is($rpt->{relative_humidity}, '60', 'relative_humidity 201211210314-KDXX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210314-KDXX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210314-KDXX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210314-KDXX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210314-KDXX');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210314-KDXX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210314-KDXX');
is($rpt->{station_type}, 'Automated', 'station_type 201211210314-KDXX');
is($rpt->{storm}, undef, 'storm 201211210314-KDXX');
is($rpt->{temperature_c}, '04', 'temperature_c 201211210314-KDXX');
is($rpt->{temperature_f}, '39', 'temperature_f 201211210314-KDXX');
is($rpt->{templateout}, undef, 'templateout 201211210314-KDXX');
is($rpt->{tfile}, undef, 'tfile 201211210314-KDXX');
is($rpt->{thpressure}, undef, 'thpressure 201211210314-KDXX');
is($rpt->{time}, '0314', 'time 201211210314-KDXX');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210314-KDXX');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210314-KDXX');
is($rpt->{windchill_c}, '1', 'windchill_c 201211210314-KDXX');
is($rpt->{windchill_f}, '34', 'windchill_f 201211210314-KDXX');
is($rpt->{winddir}, '150', 'winddir 201211210314-KDXX');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210314-KDXX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210314-KDXX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210314-KDXX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210314-KDXX');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210314-KDXX');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210314-KDXX');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210314-KDXX');
