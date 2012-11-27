#!perl -T

use strict;
use warnings;

# Test 201211210254-KACY
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:54 KACY 210254Z 02004KT 10SM CLR 04/02 A3014 RMK AO2 SLP205 T00440017 51005  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:54 KACY 210254Z 02004KT 10SM CLR 04/02 A3014 RMK AO2 SLP205 T00440017 51005  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210254-KACY');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210254-KACY');
is($rpt->{code}, 'KACY', 'code 201211210254-KACY');
is($rpt->{conditions1}, undef, 'conditions1 201211210254-KACY');
is($rpt->{conditions2}, undef, 'conditions2 201211210254-KACY');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210254-KACY');
is($rpt->{day}, '21', 'day 201211210254-KACY');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210254-KACY');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210254-KACY');
is($rpt->{error}, undef, 'error 201211210254-KACY');
is($rpt->{errortext}, undef, 'errortext 201211210254-KACY');
is($rpt->{eventbe}, undef, 'eventbe 201211210254-KACY');
is($rpt->{heat_index_c}, '50', 'heat_index_c 201211210254-KACY');
is($rpt->{heat_index_f}, '123', 'heat_index_f 201211210254-KACY');
is($rpt->{http}, undef, 'http 201211210254-KACY');
is($rpt->{intensity}, undef, 'intensity 201211210254-KACY');
is($rpt->{maintenance}, undef, 'maintenance 201211210254-KACY');
is($rpt->{obs}, '2012/11/21 02:54 KACY 210254Z 02004KT 10SM CLR 04/02 A3014 RMK AO2 SLP205 T00440017 51005  ', 'obs 201211210254-KACY');
is($rpt->{precipslr}, undef, 'precipslr 201211210254-KACY');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210254-KACY');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210254-KACY');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210254-KACY');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210254-KACY');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210254-KACY');
is($rpt->{ptemperature}, 'T00440017', 'ptemperature 201211210254-KACY');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210254-KACY');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.5','T00440017','51005'], 'remark_arrayref 201211210254-KACY');
is($rpt->{slp_inhg}, '30.13', 'slp_inhg 201211210254-KACY');
is($rpt->{slp_kgcm}, '1.04062426', 'slp_kgcm 201211210254-KACY');
is($rpt->{slp_lbin}, '14.8011279', 'slp_lbin 201211210254-KACY');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210254-KACY');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210254-KACY');
is($rpt->{station_type}, 'Automated', 'station_type 201211210254-KACY');
is($rpt->{storm}, undef, 'storm 201211210254-KACY');
is($rpt->{temperature_c}, '04', 'temperature_c 201211210254-KACY');
is($rpt->{temperature_f}, '39', 'temperature_f 201211210254-KACY');
is($rpt->{templateout}, undef, 'templateout 201211210254-KACY');
is($rpt->{tfile}, undef, 'tfile 201211210254-KACY');
is($rpt->{thpressure}, '51005', 'thpressure 201211210254-KACY');
is($rpt->{time}, '0254', 'time 201211210254-KACY');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210254-KACY');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210254-KACY');
is($rpt->{windchill_c}, '2', 'windchill_c 201211210254-KACY');
is($rpt->{windchill_f}, '36', 'windchill_f 201211210254-KACY');
is($rpt->{winddir}, '20', 'winddir 201211210254-KACY');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211210254-KACY');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210254-KACY');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210254-KACY');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210254-KACY');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210254-KACY');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210254-KACY');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210254-KACY');
