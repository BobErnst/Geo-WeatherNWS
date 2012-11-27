#!perl -T

use strict;
use warnings;

# Test 201211210254-KAKR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:54 KAKR 210254Z AUTO 00000KT 10SM OVC120 05/02 A3014 RMK AO2 SLP211 T00500017 51006 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:54 KAKR 210254Z AUTO 00000KT 10SM OVC120 05/02 A3014 RMK AO2 SLP211 T00500017 51006 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210254-KAKR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC120'], 'cloudlevel_arrayref 201211210254-KAKR');
is($rpt->{code}, 'KAKR', 'code 201211210254-KAKR');
is($rpt->{conditions1}, undef, 'conditions1 201211210254-KAKR');
is($rpt->{conditions2}, undef, 'conditions2 201211210254-KAKR');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210254-KAKR');
is($rpt->{day}, '21', 'day 201211210254-KAKR');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210254-KAKR');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210254-KAKR');
is($rpt->{error}, undef, 'error 201211210254-KAKR');
is($rpt->{errortext}, undef, 'errortext 201211210254-KAKR');
is($rpt->{eventbe}, undef, 'eventbe 201211210254-KAKR');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201211210254-KAKR');
is($rpt->{heat_index_f}, '120', 'heat_index_f 201211210254-KAKR');
is($rpt->{http}, undef, 'http 201211210254-KAKR');
is($rpt->{intensity}, undef, 'intensity 201211210254-KAKR');
is($rpt->{maintenance}, undef, 'maintenance 201211210254-KAKR');
is($rpt->{obs}, '2012/11/21 02:54 KAKR 210254Z AUTO 00000KT 10SM OVC120 05/02 A3014 RMK AO2 SLP211 T00500017 51006 TSNO ', 'obs 201211210254-KAKR');
is($rpt->{precipslr}, undef, 'precipslr 201211210254-KAKR');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210254-KAKR');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210254-KAKR');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210254-KAKR');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210254-KAKR');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210254-KAKR');
is($rpt->{ptemperature}, 'T00500017', 'ptemperature 201211210254-KAKR');
is($rpt->{relative_humidity}, '81', 'relative_humidity 201211210254-KAKR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.1','T00500017','51006','TSNO'], 'remark_arrayref 201211210254-KAKR');
is($rpt->{slp_inhg}, '30.15', 'slp_inhg 201211210254-KAKR');
is($rpt->{slp_kgcm}, '1.041236092', 'slp_kgcm 201211210254-KAKR');
is($rpt->{slp_lbin}, '14.80983018', 'slp_lbin 201211210254-KAKR');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210254-KAKR');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210254-KAKR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210254-KAKR');
is($rpt->{storm}, 'TSNO', 'storm 201211210254-KAKR');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210254-KAKR');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210254-KAKR');
is($rpt->{templateout}, undef, 'templateout 201211210254-KAKR');
is($rpt->{tfile}, undef, 'tfile 201211210254-KAKR');
is($rpt->{thpressure}, '51006', 'thpressure 201211210254-KAKR');
is($rpt->{time}, '0254', 'time 201211210254-KAKR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210254-KAKR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210254-KAKR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210254-KAKR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210254-KAKR');
is($rpt->{winddir}, '0', 'winddir 201211210254-KAKR');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210254-KAKR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210254-KAKR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210254-KAKR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210254-KAKR');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210254-KAKR');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210254-KAKR');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210254-KAKR');
