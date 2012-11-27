#!perl -T

use strict;
use warnings;

# Test 201211210353-KASX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KASX 210353Z AUTO 00000KT 1/4SM FG VV001 01/00 A3009 RMK AO2 SLP202 T00060000 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KASX 210353Z AUTO 00000KT 1/4SM FG VV001 01/00 A3009 RMK AO2 SLP202 T00060000 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210353-KASX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['VV001'], 'cloudlevel_arrayref 201211210353-KASX');
is($rpt->{code}, 'KASX', 'code 201211210353-KASX');
is($rpt->{conditions1}, 'Fog', 'conditions1 201211210353-KASX');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KASX');
is($rpt->{conditionstext}, 'Fog', 'conditionstext 201211210353-KASX');
is($rpt->{day}, '21', 'day 201211210353-KASX');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210353-KASX');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210353-KASX');
is($rpt->{error}, undef, 'error 201211210353-KASX');
is($rpt->{errortext}, undef, 'errortext 201211210353-KASX');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KASX');
is($rpt->{heat_index_c}, '61', 'heat_index_c 201211210353-KASX');
is($rpt->{heat_index_f}, '142', 'heat_index_f 201211210353-KASX');
is($rpt->{http}, undef, 'http 201211210353-KASX');
is($rpt->{intensity}, undef, 'intensity 201211210353-KASX');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KASX');
is($rpt->{obs}, '2012/11/21 03:53 KASX 210353Z AUTO 00000KT 1/4SM FG VV001 01/00 A3009 RMK AO2 SLP202 T00060000 ', 'obs 201211210353-KASX');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KASX');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211210353-KASX');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211210353-KASX');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211210353-KASX');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210353-KASX');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211210353-KASX');
is($rpt->{ptemperature}, 'T00060000', 'ptemperature 201211210353-KASX');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210353-KASX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.2','T00060000'], 'remark_arrayref 201211210353-KASX');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210353-KASX');
is($rpt->{slp_kgcm}, '1.040318344', 'slp_kgcm 201211210353-KASX');
is($rpt->{slp_lbin}, '14.79677676', 'slp_lbin 201211210353-KASX');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210353-KASX');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210353-KASX');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KASX');
is($rpt->{storm}, undef, 'storm 201211210353-KASX');
is($rpt->{temperature_c}, '01', 'temperature_c 201211210353-KASX');
is($rpt->{temperature_f}, '34', 'temperature_f 201211210353-KASX');
is($rpt->{templateout}, undef, 'templateout 201211210353-KASX');
is($rpt->{tfile}, undef, 'tfile 201211210353-KASX');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KASX');
is($rpt->{time}, '0353', 'time 201211210353-KASX');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210353-KASX');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210353-KASX');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KASX');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KASX');
is($rpt->{winddir}, '0', 'winddir 201211210353-KASX');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210353-KASX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KASX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KASX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KASX');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210353-KASX');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210353-KASX');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210353-KASX');
