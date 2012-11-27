#!perl -T

use strict;
use warnings;

# Test 201211210356-KPRN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:56 KPRN 210356Z AUTO 00000KT 10SM CLR 09/07 A3014 RMK AO2 SLP206 T00890072 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:56 KPRN 210356Z AUTO 00000KT 10SM CLR 09/07 A3014 RMK AO2 SLP206 T00890072 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210356-KPRN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210356-KPRN');
is($rpt->{code}, 'KPRN', 'code 201211210356-KPRN');
is($rpt->{conditions1}, undef, 'conditions1 201211210356-KPRN');
is($rpt->{conditions2}, undef, 'conditions2 201211210356-KPRN');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210356-KPRN');
is($rpt->{day}, '21', 'day 201211210356-KPRN');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211210356-KPRN');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211210356-KPRN');
is($rpt->{error}, undef, 'error 201211210356-KPRN');
is($rpt->{errortext}, undef, 'errortext 201211210356-KPRN');
is($rpt->{eventbe}, undef, 'eventbe 201211210356-KPRN');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211210356-KPRN');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211210356-KPRN');
is($rpt->{http}, undef, 'http 201211210356-KPRN');
is($rpt->{intensity}, undef, 'intensity 201211210356-KPRN');
is($rpt->{maintenance}, '$', 'maintenance 201211210356-KPRN');
is($rpt->{obs}, '2012/11/21 03:56 KPRN 210356Z AUTO 00000KT 10SM CLR 09/07 A3014 RMK AO2 SLP206 T00890072 $ ', 'obs 201211210356-KPRN');
is($rpt->{precipslr}, undef, 'precipslr 201211210356-KPRN');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210356-KPRN');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210356-KPRN');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210356-KPRN');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210356-KPRN');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210356-KPRN');
is($rpt->{ptemperature}, 'T00890072', 'ptemperature 201211210356-KPRN');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210356-KPRN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.6','T00890072','$'], 'remark_arrayref 201211210356-KPRN');
is($rpt->{slp_inhg}, '30.13', 'slp_inhg 201211210356-KPRN');
is($rpt->{slp_kgcm}, '1.040726232', 'slp_kgcm 201211210356-KPRN');
is($rpt->{slp_lbin}, '14.80257828', 'slp_lbin 201211210356-KPRN');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210356-KPRN');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210356-KPRN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210356-KPRN');
is($rpt->{storm}, undef, 'storm 201211210356-KPRN');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210356-KPRN');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210356-KPRN');
is($rpt->{templateout}, undef, 'templateout 201211210356-KPRN');
is($rpt->{tfile}, undef, 'tfile 201211210356-KPRN');
is($rpt->{thpressure}, undef, 'thpressure 201211210356-KPRN');
is($rpt->{time}, '0356', 'time 201211210356-KPRN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210356-KPRN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210356-KPRN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210356-KPRN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210356-KPRN');
is($rpt->{winddir}, '0', 'winddir 201211210356-KPRN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210356-KPRN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210356-KPRN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210356-KPRN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210356-KPRN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210356-KPRN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210356-KPRN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210356-KPRN');
