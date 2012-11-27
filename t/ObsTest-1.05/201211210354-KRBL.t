#!perl -T

use strict;
use warnings;

# Test 201211210354-KRBL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:54 KRBL 210354Z AUTO 16021G28KT 10SM OVC014 15/13 A2990 RMK AO2 PK WND 16030/0302 RAE32 SLP122 P0002 T01500128 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:54 KRBL 210354Z AUTO 16021G28KT 10SM OVC014 15/13 A2990 RMK AO2 PK WND 16030/0302 RAE32 SLP122 P0002 T01500128 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210354-KRBL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC014'], 'cloudlevel_arrayref 201211210354-KRBL');
is($rpt->{code}, 'KRBL', 'code 201211210354-KRBL');
is($rpt->{conditions1}, undef, 'conditions1 201211210354-KRBL');
is($rpt->{conditions2}, undef, 'conditions2 201211210354-KRBL');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210354-KRBL');
is($rpt->{day}, '21', 'day 201211210354-KRBL');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211210354-KRBL');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211210354-KRBL');
is($rpt->{error}, undef, 'error 201211210354-KRBL');
is($rpt->{errortext}, undef, 'errortext 201211210354-KRBL');
is($rpt->{eventbe}, undef, 'eventbe 201211210354-KRBL');
is($rpt->{heat_index_c}, '20', 'heat_index_c 201211210354-KRBL');
is($rpt->{heat_index_f}, '68', 'heat_index_f 201211210354-KRBL');
is($rpt->{http}, undef, 'http 201211210354-KRBL');
is($rpt->{intensity}, undef, 'intensity 201211210354-KRBL');
is($rpt->{maintenance}, undef, 'maintenance 201211210354-KRBL');
is($rpt->{obs}, '2012/11/21 03:54 KRBL 210354Z AUTO 16021G28KT 10SM OVC014 15/13 A2990 RMK AO2 PK WND 16030/0302 RAE32 SLP122 P0002 T01500128 ', 'obs 201211210354-KRBL');
is($rpt->{precipslr}, 'P0002', 'precipslr 201211210354-KRBL');
is($rpt->{pressure_inhg}, '29.90', 'pressure_inhg 201211210354-KRBL');
is($rpt->{pressure_kgcm}, '1.03249484', 'pressure_kgcm 201211210354-KRBL');
is($rpt->{pressure_lbin}, '14.6855046', 'pressure_lbin 201211210354-KRBL');
is($rpt->{pressure_mb}, '1013', 'pressure_mb 201211210354-KRBL');
is($rpt->{pressure_mmhg}, '759', 'pressure_mmhg 201211210354-KRBL');
is($rpt->{ptemperature}, 'T01500128', 'ptemperature 201211210354-KRBL');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211210354-KRBL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','PK','WND','16030/0302','RAE32','1012.2','P0002','T01500128'], 'remark_arrayref 201211210354-KRBL');
is($rpt->{slp_inhg}, '29.89', 'slp_inhg 201211210354-KRBL');
is($rpt->{slp_kgcm}, '1.032160584', 'slp_kgcm 201211210354-KRBL');
is($rpt->{slp_lbin}, '14.68074636', 'slp_lbin 201211210354-KRBL');
is($rpt->{slp_mb}, '1012', 'slp_mb 201211210354-KRBL');
is($rpt->{slp_mmhg}, '759', 'slp_mmhg 201211210354-KRBL');
is($rpt->{station_type}, 'Automated', 'station_type 201211210354-KRBL');
is($rpt->{storm}, undef, 'storm 201211210354-KRBL');
is($rpt->{temperature_c}, '15', 'temperature_c 201211210354-KRBL');
is($rpt->{temperature_f}, '59', 'temperature_f 201211210354-KRBL');
is($rpt->{templateout}, undef, 'templateout 201211210354-KRBL');
is($rpt->{tfile}, undef, 'tfile 201211210354-KRBL');
is($rpt->{thpressure}, undef, 'thpressure 201211210354-KRBL');
is($rpt->{time}, '0354', 'time 201211210354-KRBL');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210354-KRBL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210354-KRBL');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210354-KRBL');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210354-KRBL');
is($rpt->{winddir}, '160', 'winddir 201211210354-KRBL');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210354-KRBL');
is($rpt->{windgustkmh}, '52', 'windgustkmh 201211210354-KRBL');
is($rpt->{windgustkts}, '28', 'windgustkts 201211210354-KRBL');
is($rpt->{windgustmph}, '32', 'windgustmph 201211210354-KRBL');
is($rpt->{windspeedkmh}, '39', 'windspeedkmh 201211210354-KRBL');
is($rpt->{windspeedkts}, '21', 'windspeedkts 201211210354-KRBL');
is($rpt->{windspeedmph}, '24', 'windspeedmph 201211210354-KRBL');
