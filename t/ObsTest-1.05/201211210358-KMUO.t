#!perl -T

use strict;
use warnings;

# Test 201211210358-KMUO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:58 KMUO 210358Z AUTO 10015KT 10SM OVC140 12/05 A2988 RMK AO2 SLP113 T01160048 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:58 KMUO 210358Z AUTO 10015KT 10SM OVC140 12/05 A2988 RMK AO2 SLP113 T01160048 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210358-KMUO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC140'], 'cloudlevel_arrayref 201211210358-KMUO');
is($rpt->{code}, 'KMUO', 'code 201211210358-KMUO');
is($rpt->{conditions1}, undef, 'conditions1 201211210358-KMUO');
is($rpt->{conditions2}, undef, 'conditions2 201211210358-KMUO');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210358-KMUO');
is($rpt->{day}, '21', 'day 201211210358-KMUO');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211210358-KMUO');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211210358-KMUO');
is($rpt->{error}, undef, 'error 201211210358-KMUO');
is($rpt->{errortext}, undef, 'errortext 201211210358-KMUO');
is($rpt->{eventbe}, undef, 'eventbe 201211210358-KMUO');
is($rpt->{heat_index_c}, '33', 'heat_index_c 201211210358-KMUO');
is($rpt->{heat_index_f}, '92', 'heat_index_f 201211210358-KMUO');
is($rpt->{http}, undef, 'http 201211210358-KMUO');
is($rpt->{intensity}, undef, 'intensity 201211210358-KMUO');
is($rpt->{maintenance}, '$', 'maintenance 201211210358-KMUO');
is($rpt->{obs}, '2012/11/21 03:58 KMUO 210358Z AUTO 10015KT 10SM OVC140 12/05 A2988 RMK AO2 SLP113 T01160048 $ ', 'obs 201211210358-KMUO');
is($rpt->{precipslr}, undef, 'precipslr 201211210358-KMUO');
is($rpt->{pressure_inhg}, '29.88', 'pressure_inhg 201211210358-KMUO');
is($rpt->{pressure_kgcm}, '1.031804208', 'pressure_kgcm 201211210358-KMUO');
is($rpt->{pressure_lbin}, '14.67568152', 'pressure_lbin 201211210358-KMUO');
is($rpt->{pressure_mb}, '1012', 'pressure_mb 201211210358-KMUO');
is($rpt->{pressure_mmhg}, '759', 'pressure_mmhg 201211210358-KMUO');
is($rpt->{ptemperature}, 'T01160048', 'ptemperature 201211210358-KMUO');
is($rpt->{relative_humidity}, '62', 'relative_humidity 201211210358-KMUO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1011.3','T01160048','$'], 'remark_arrayref 201211210358-KMUO');
is($rpt->{slp_inhg}, '29.86', 'slp_inhg 201211210358-KMUO');
is($rpt->{slp_kgcm}, '1.031242836', 'slp_kgcm 201211210358-KMUO');
is($rpt->{slp_lbin}, '14.66769294', 'slp_lbin 201211210358-KMUO');
is($rpt->{slp_mb}, '1011', 'slp_mb 201211210358-KMUO');
is($rpt->{slp_mmhg}, '759', 'slp_mmhg 201211210358-KMUO');
is($rpt->{station_type}, 'Automated', 'station_type 201211210358-KMUO');
is($rpt->{storm}, undef, 'storm 201211210358-KMUO');
is($rpt->{temperature_c}, '12', 'temperature_c 201211210358-KMUO');
is($rpt->{temperature_f}, '54', 'temperature_f 201211210358-KMUO');
is($rpt->{templateout}, undef, 'templateout 201211210358-KMUO');
is($rpt->{tfile}, undef, 'tfile 201211210358-KMUO');
is($rpt->{thpressure}, undef, 'thpressure 201211210358-KMUO');
is($rpt->{time}, '0358', 'time 201211210358-KMUO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210358-KMUO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210358-KMUO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210358-KMUO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210358-KMUO');
is($rpt->{winddir}, '100', 'winddir 201211210358-KMUO');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211210358-KMUO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210358-KMUO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210358-KMUO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210358-KMUO');
is($rpt->{windspeedkmh}, '28', 'windspeedkmh 201211210358-KMUO');
is($rpt->{windspeedkts}, '15', 'windspeedkts 201211210358-KMUO');
is($rpt->{windspeedmph}, '17', 'windspeedmph 201211210358-KMUO');
