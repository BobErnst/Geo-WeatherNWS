#!perl -T

use strict;
use warnings;

# Test 201211210355-K1A5
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 K1A5 210355Z AUTO 00000KT 10SM SCT050 01/00 A3014 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 K1A5 210355Z AUTO 00000KT 10SM SCT050 01/00 A3014 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211210355-K1A5');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT050'], 'cloudlevel_arrayref 201211210355-K1A5');
is($rpt->{code}, 'K1A5', 'code 201211210355-K1A5');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-K1A5');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-K1A5');
is($rpt->{conditionstext}, 'Partly Cloudy', 'conditionstext 201211210355-K1A5');
is($rpt->{day}, '21', 'day 201211210355-K1A5');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210355-K1A5');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210355-K1A5');
is($rpt->{error}, undef, 'error 201211210355-K1A5');
is($rpt->{errortext}, undef, 'errortext 201211210355-K1A5');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-K1A5');
is($rpt->{heat_index_c}, '61', 'heat_index_c 201211210355-K1A5');
is($rpt->{heat_index_f}, '142', 'heat_index_f 201211210355-K1A5');
is($rpt->{http}, undef, 'http 201211210355-K1A5');
is($rpt->{intensity}, undef, 'intensity 201211210355-K1A5');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-K1A5');
is($rpt->{obs}, '2012/11/21 03:55 K1A5 210355Z AUTO 00000KT 10SM SCT050 01/00 A3014 RMK AO2 ', 'obs 201211210355-K1A5');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-K1A5');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210355-K1A5');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210355-K1A5');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210355-K1A5');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210355-K1A5');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-K1A5');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-K1A5');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-K1A5');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210355-K1A5');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-K1A5');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-K1A5');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-K1A5');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-K1A5');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-K1A5');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-K1A5');
is($rpt->{storm}, undef, 'storm 201211210355-K1A5');
is($rpt->{temperature_c}, '01', 'temperature_c 201211210355-K1A5');
is($rpt->{temperature_f}, '34', 'temperature_f 201211210355-K1A5');
is($rpt->{templateout}, undef, 'templateout 201211210355-K1A5');
is($rpt->{tfile}, undef, 'tfile 201211210355-K1A5');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-K1A5');
is($rpt->{time}, '0355', 'time 201211210355-K1A5');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-K1A5');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-K1A5');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-K1A5');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-K1A5');
is($rpt->{winddir}, '0', 'winddir 201211210355-K1A5');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-K1A5');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-K1A5');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-K1A5');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-K1A5');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-K1A5');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-K1A5');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-K1A5');
