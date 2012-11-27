#!perl -T

use strict;
use warnings;

# Test 201211210312-KAIT
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:12 KAIT 210312Z AUTO 17005KT 10SM CLR 04/M02 A3000 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:12 KAIT 210312Z AUTO 17005KT 10SM CLR 04/M02 A3000 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210312-KAIT');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210312-KAIT');
is($rpt->{code}, 'KAIT', 'code 201211210312-KAIT');
is($rpt->{conditions1}, undef, 'conditions1 201211210312-KAIT');
is($rpt->{conditions2}, undef, 'conditions2 201211210312-KAIT');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210312-KAIT');
is($rpt->{day}, '21', 'day 201211210312-KAIT');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211210312-KAIT');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211210312-KAIT');
is($rpt->{error}, undef, 'error 201211210312-KAIT');
is($rpt->{errortext}, undef, 'errortext 201211210312-KAIT');
is($rpt->{eventbe}, undef, 'eventbe 201211210312-KAIT');
is($rpt->{heat_index_c}, '56', 'heat_index_c 201211210312-KAIT');
is($rpt->{heat_index_f}, '134', 'heat_index_f 201211210312-KAIT');
is($rpt->{http}, undef, 'http 201211210312-KAIT');
is($rpt->{intensity}, undef, 'intensity 201211210312-KAIT');
is($rpt->{maintenance}, undef, 'maintenance 201211210312-KAIT');
is($rpt->{obs}, '2012/11/21 03:12 KAIT 210312Z AUTO 17005KT 10SM CLR 04/M02 A3000 RMK AO2 ', 'obs 201211210312-KAIT');
is($rpt->{precipslr}, undef, 'precipslr 201211210312-KAIT');
is($rpt->{pressure_inhg}, '30.00', 'pressure_inhg 201211210312-KAIT');
is($rpt->{pressure_kgcm}, '1.035948', 'pressure_kgcm 201211210312-KAIT');
is($rpt->{pressure_lbin}, '14.73462', 'pressure_lbin 201211210312-KAIT');
is($rpt->{pressure_mb}, '1016', 'pressure_mb 201211210312-KAIT');
is($rpt->{pressure_mmhg}, '762', 'pressure_mmhg 201211210312-KAIT');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210312-KAIT');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211210312-KAIT');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210312-KAIT');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210312-KAIT');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210312-KAIT');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210312-KAIT');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210312-KAIT');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210312-KAIT');
is($rpt->{station_type}, 'Automated', 'station_type 201211210312-KAIT');
is($rpt->{storm}, undef, 'storm 201211210312-KAIT');
is($rpt->{temperature_c}, '04', 'temperature_c 201211210312-KAIT');
is($rpt->{temperature_f}, '39', 'temperature_f 201211210312-KAIT');
is($rpt->{templateout}, undef, 'templateout 201211210312-KAIT');
is($rpt->{tfile}, undef, 'tfile 201211210312-KAIT');
is($rpt->{thpressure}, undef, 'thpressure 201211210312-KAIT');
is($rpt->{time}, '0312', 'time 201211210312-KAIT');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210312-KAIT');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210312-KAIT');
is($rpt->{windchill_c}, '2', 'windchill_c 201211210312-KAIT');
is($rpt->{windchill_f}, '35', 'windchill_f 201211210312-KAIT');
is($rpt->{winddir}, '170', 'winddir 201211210312-KAIT');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210312-KAIT');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210312-KAIT');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210312-KAIT');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210312-KAIT');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210312-KAIT');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210312-KAIT');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210312-KAIT');
