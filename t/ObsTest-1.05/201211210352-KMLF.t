#!perl -T

use strict;
use warnings;

# Test 201211210352-KMLF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:52 KMLF 210352Z AUTO 24012KT 10SM CLR 06/M03 A3013 RMK AO2 SLP196 T00611033 TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:52 KMLF 210352Z AUTO 24012KT 10SM CLR 06/M03 A3013 RMK AO2 SLP196 T00611033 TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210352-KMLF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210352-KMLF');
is($rpt->{code}, 'KMLF', 'code 201211210352-KMLF');
is($rpt->{conditions1}, undef, 'conditions1 201211210352-KMLF');
is($rpt->{conditions2}, undef, 'conditions2 201211210352-KMLF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210352-KMLF');
is($rpt->{day}, '21', 'day 201211210352-KMLF');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211210352-KMLF');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211210352-KMLF');
is($rpt->{error}, undef, 'error 201211210352-KMLF');
is($rpt->{errortext}, undef, 'errortext 201211210352-KMLF');
is($rpt->{eventbe}, undef, 'eventbe 201211210352-KMLF');
is($rpt->{heat_index_c}, '48', 'heat_index_c 201211210352-KMLF');
is($rpt->{heat_index_f}, '118', 'heat_index_f 201211210352-KMLF');
is($rpt->{http}, undef, 'http 201211210352-KMLF');
is($rpt->{intensity}, undef, 'intensity 201211210352-KMLF');
is($rpt->{maintenance}, undef, 'maintenance 201211210352-KMLF');
is($rpt->{obs}, '2012/11/21 03:52 KMLF 210352Z AUTO 24012KT 10SM CLR 06/M03 A3013 RMK AO2 SLP196 T00611033 TSNO  ', 'obs 201211210352-KMLF');
is($rpt->{precipslr}, undef, 'precipslr 201211210352-KMLF');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210352-KMLF');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210352-KMLF');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210352-KMLF');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210352-KMLF');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210352-KMLF');
is($rpt->{ptemperature}, 'T00611033', 'ptemperature 201211210352-KMLF');
is($rpt->{relative_humidity}, '52', 'relative_humidity 201211210352-KMLF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.6','T00611033','TSNO'], 'remark_arrayref 201211210352-KMLF');
is($rpt->{slp_inhg}, '30.10', 'slp_inhg 201211210352-KMLF');
is($rpt->{slp_kgcm}, '1.039706512', 'slp_kgcm 201211210352-KMLF');
is($rpt->{slp_lbin}, '14.78807448', 'slp_lbin 201211210352-KMLF');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210352-KMLF');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210352-KMLF');
is($rpt->{station_type}, 'Automated', 'station_type 201211210352-KMLF');
is($rpt->{storm}, 'TSNO', 'storm 201211210352-KMLF');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210352-KMLF');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210352-KMLF');
is($rpt->{templateout}, undef, 'templateout 201211210352-KMLF');
is($rpt->{tfile}, undef, 'tfile 201211210352-KMLF');
is($rpt->{thpressure}, undef, 'thpressure 201211210352-KMLF');
is($rpt->{time}, '0352', 'time 201211210352-KMLF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210352-KMLF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210352-KMLF');
is($rpt->{windchill_c}, '2', 'windchill_c 201211210352-KMLF');
is($rpt->{windchill_f}, '36', 'windchill_f 201211210352-KMLF');
is($rpt->{winddir}, '240', 'winddir 201211210352-KMLF');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211210352-KMLF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210352-KMLF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210352-KMLF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210352-KMLF');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211210352-KMLF');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211210352-KMLF');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211210352-KMLF');
