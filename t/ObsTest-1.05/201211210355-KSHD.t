#!perl -T

use strict;
use warnings;

# Test 201211210355-KSHD
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KSHD 210355Z AUTO 00000KT 3SM BR CLR 01/00 A3015 RMK AO2 T00061002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KSHD 210355Z AUTO 00000KT 3SM BR CLR 01/00 A3015 RMK AO2 T00061002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KSHD');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KSHD');
is($rpt->{code}, 'KSHD', 'code 201211210355-KSHD');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210355-KSHD');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KSHD');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210355-KSHD');
is($rpt->{day}, '21', 'day 201211210355-KSHD');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210355-KSHD');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210355-KSHD');
is($rpt->{error}, undef, 'error 201211210355-KSHD');
is($rpt->{errortext}, undef, 'errortext 201211210355-KSHD');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KSHD');
is($rpt->{heat_index_c}, '61', 'heat_index_c 201211210355-KSHD');
is($rpt->{heat_index_f}, '142', 'heat_index_f 201211210355-KSHD');
is($rpt->{http}, undef, 'http 201211210355-KSHD');
is($rpt->{intensity}, undef, 'intensity 201211210355-KSHD');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KSHD');
is($rpt->{obs}, '2012/11/21 03:55 KSHD 210355Z AUTO 00000KT 3SM BR CLR 01/00 A3015 RMK AO2 T00061002 ', 'obs 201211210355-KSHD');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KSHD');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211210355-KSHD');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211210355-KSHD');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211210355-KSHD');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210355-KSHD');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-KSHD');
is($rpt->{ptemperature}, 'T00061002', 'ptemperature 201211210355-KSHD');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KSHD');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00061002'], 'remark_arrayref 201211210355-KSHD');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KSHD');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KSHD');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KSHD');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KSHD');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KSHD');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KSHD');
is($rpt->{storm}, undef, 'storm 201211210355-KSHD');
is($rpt->{temperature_c}, '01', 'temperature_c 201211210355-KSHD');
is($rpt->{temperature_f}, '34', 'temperature_f 201211210355-KSHD');
is($rpt->{templateout}, undef, 'templateout 201211210355-KSHD');
is($rpt->{tfile}, undef, 'tfile 201211210355-KSHD');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KSHD');
is($rpt->{time}, '0355', 'time 201211210355-KSHD');
is($rpt->{visibility_km}, '5', 'visibility_km 201211210355-KSHD');
is($rpt->{visibility_mi}, '3', 'visibility_mi 201211210355-KSHD');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KSHD');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KSHD');
is($rpt->{winddir}, '0', 'winddir 201211210355-KSHD');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KSHD');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KSHD');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KSHD');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KSHD');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KSHD');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KSHD');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KSHD');
