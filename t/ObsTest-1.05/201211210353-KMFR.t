#!perl -T

use strict;
use warnings;

# Test 201211210353-KMFR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KMFR 210353Z 00000KT 10SM BKN060 09/08 A2975 RMK AO2 SLP075 T00940078 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KMFR 210353Z 00000KT 10SM BKN060 09/08 A2975 RMK AO2 SLP075 T00940078 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211210353-KMFR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN060'], 'cloudlevel_arrayref 201211210353-KMFR');
is($rpt->{code}, 'KMFR', 'code 201211210353-KMFR');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KMFR');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KMFR');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210353-KMFR');
is($rpt->{day}, '21', 'day 201211210353-KMFR');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210353-KMFR');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210353-KMFR');
is($rpt->{error}, undef, 'error 201211210353-KMFR');
is($rpt->{errortext}, undef, 'errortext 201211210353-KMFR');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KMFR');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211210353-KMFR');
is($rpt->{heat_index_f}, '83', 'heat_index_f 201211210353-KMFR');
is($rpt->{http}, undef, 'http 201211210353-KMFR');
is($rpt->{intensity}, undef, 'intensity 201211210353-KMFR');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KMFR');
is($rpt->{obs}, '2012/11/21 03:53 KMFR 210353Z 00000KT 10SM BKN060 09/08 A2975 RMK AO2 SLP075 T00940078 ', 'obs 201211210353-KMFR');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KMFR');
is($rpt->{pressure_inhg}, '29.75', 'pressure_inhg 201211210353-KMFR');
is($rpt->{pressure_kgcm}, '1.0273151', 'pressure_kgcm 201211210353-KMFR');
is($rpt->{pressure_lbin}, '14.6118315', 'pressure_lbin 201211210353-KMFR');
is($rpt->{pressure_mb}, '1007', 'pressure_mb 201211210353-KMFR');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211210353-KMFR');
is($rpt->{ptemperature}, 'T00940078', 'ptemperature 201211210353-KMFR');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210353-KMFR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1007.5','T00940078'], 'remark_arrayref 201211210353-KMFR');
is($rpt->{slp_inhg}, '29.75', 'slp_inhg 201211210353-KMFR');
is($rpt->{slp_kgcm}, '1.0273679', 'slp_kgcm 201211210353-KMFR');
is($rpt->{slp_lbin}, '14.6125785', 'slp_lbin 201211210353-KMFR');
is($rpt->{slp_mb}, '1008', 'slp_mb 201211210353-KMFR');
is($rpt->{slp_mmhg}, '756', 'slp_mmhg 201211210353-KMFR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KMFR');
is($rpt->{storm}, undef, 'storm 201211210353-KMFR');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210353-KMFR');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210353-KMFR');
is($rpt->{templateout}, undef, 'templateout 201211210353-KMFR');
is($rpt->{tfile}, undef, 'tfile 201211210353-KMFR');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KMFR');
is($rpt->{time}, '0353', 'time 201211210353-KMFR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KMFR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KMFR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KMFR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KMFR');
is($rpt->{winddir}, '0', 'winddir 201211210353-KMFR');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KMFR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KMFR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KMFR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KMFR');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KMFR');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KMFR');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KMFR');
