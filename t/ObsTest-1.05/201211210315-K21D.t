#!perl -T

use strict;
use warnings;

# Test 201211210315-K21D
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:15 K21D 210315Z AUTO 18007KT 10SM CLR 02/00 A3008 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:15 K21D 210315Z AUTO 18007KT 10SM CLR 02/00 A3008 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210315-K21D');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210315-K21D');
is($rpt->{code}, 'K21D', 'code 201211210315-K21D');
is($rpt->{conditions1}, undef, 'conditions1 201211210315-K21D');
is($rpt->{conditions2}, undef, 'conditions2 201211210315-K21D');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210315-K21D');
is($rpt->{day}, '21', 'day 201211210315-K21D');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210315-K21D');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210315-K21D');
is($rpt->{error}, undef, 'error 201211210315-K21D');
is($rpt->{errortext}, undef, 'errortext 201211210315-K21D');
is($rpt->{eventbe}, undef, 'eventbe 201211210315-K21D');
is($rpt->{heat_index_c}, '60', 'heat_index_c 201211210315-K21D');
is($rpt->{heat_index_f}, '140', 'heat_index_f 201211210315-K21D');
is($rpt->{http}, undef, 'http 201211210315-K21D');
is($rpt->{intensity}, undef, 'intensity 201211210315-K21D');
is($rpt->{maintenance}, undef, 'maintenance 201211210315-K21D');
is($rpt->{obs}, '2012/11/21 03:15 K21D 210315Z AUTO 18007KT 10SM CLR 02/00 A3008 RMK AO2 ', 'obs 201211210315-K21D');
is($rpt->{precipslr}, undef, 'precipslr 201211210315-K21D');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211210315-K21D');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211210315-K21D');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211210315-K21D');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210315-K21D');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210315-K21D');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210315-K21D');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210315-K21D');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210315-K21D');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210315-K21D');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210315-K21D');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210315-K21D');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210315-K21D');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210315-K21D');
is($rpt->{station_type}, 'Automated', 'station_type 201211210315-K21D');
is($rpt->{storm}, undef, 'storm 201211210315-K21D');
is($rpt->{temperature_c}, '02', 'temperature_c 201211210315-K21D');
is($rpt->{temperature_f}, '36', 'temperature_f 201211210315-K21D');
is($rpt->{templateout}, undef, 'templateout 201211210315-K21D');
is($rpt->{tfile}, undef, 'tfile 201211210315-K21D');
is($rpt->{thpressure}, undef, 'thpressure 201211210315-K21D');
is($rpt->{time}, '0315', 'time 201211210315-K21D');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210315-K21D');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210315-K21D');
is($rpt->{windchill_c}, '-2', 'windchill_c 201211210315-K21D');
is($rpt->{windchill_f}, '29', 'windchill_f 201211210315-K21D');
is($rpt->{winddir}, '180', 'winddir 201211210315-K21D');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210315-K21D');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210315-K21D');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210315-K21D');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210315-K21D');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211210315-K21D');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211210315-K21D');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211210315-K21D');
