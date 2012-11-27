#!perl -T

use strict;
use warnings;

# Test 201211210356-KEAU
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:56 KEAU 210356Z AUTO 00000KT 1/4SM FZFG VV003 M02/M02 A3011 RMK AO2 SLP206 T10171022 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:56 KEAU 210356Z AUTO 00000KT 1/4SM FZFG VV003 M02/M02 A3011 RMK AO2 SLP206 T10171022 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211210356-KEAU');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['VV003'], 'cloudlevel_arrayref 201211210356-KEAU');
is($rpt->{code}, 'KEAU', 'code 201211210356-KEAU');
is($rpt->{conditions1}, 'Freezing', 'conditions1 201211210356-KEAU');
is($rpt->{conditions2}, 'Fog', 'conditions2 201211210356-KEAU');
is($rpt->{conditionstext}, 'Freezing Fog', 'conditionstext 201211210356-KEAU');
is($rpt->{day}, '21', 'day 201211210356-KEAU');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211210356-KEAU');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211210356-KEAU');
is($rpt->{error}, undef, 'error 201211210356-KEAU');
is($rpt->{errortext}, undef, 'errortext 201211210356-KEAU');
is($rpt->{eventbe}, undef, 'eventbe 201211210356-KEAU');
is($rpt->{heat_index_c}, '73', 'heat_index_c 201211210356-KEAU');
is($rpt->{heat_index_f}, '163', 'heat_index_f 201211210356-KEAU');
is($rpt->{http}, undef, 'http 201211210356-KEAU');
is($rpt->{intensity}, undef, 'intensity 201211210356-KEAU');
is($rpt->{maintenance}, undef, 'maintenance 201211210356-KEAU');
is($rpt->{obs}, '2012/11/21 03:56 KEAU 210356Z AUTO 00000KT 1/4SM FZFG VV003 M02/M02 A3011 RMK AO2 SLP206 T10171022 ', 'obs 201211210356-KEAU');
is($rpt->{precipslr}, undef, 'precipslr 201211210356-KEAU');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211210356-KEAU');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211210356-KEAU');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211210356-KEAU');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210356-KEAU');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210356-KEAU');
is($rpt->{ptemperature}, 'T10171022', 'ptemperature 201211210356-KEAU');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210356-KEAU');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.6','T10171022'], 'remark_arrayref 201211210356-KEAU');
is($rpt->{slp_inhg}, '30.13', 'slp_inhg 201211210356-KEAU');
is($rpt->{slp_kgcm}, '1.040726232', 'slp_kgcm 201211210356-KEAU');
is($rpt->{slp_lbin}, '14.80257828', 'slp_lbin 201211210356-KEAU');
is($rpt->{slp_mb}, '1021', 'slp_mb 201211210356-KEAU');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211210356-KEAU');
is($rpt->{station_type}, 'Automated', 'station_type 201211210356-KEAU');
is($rpt->{storm}, undef, 'storm 201211210356-KEAU');
is($rpt->{temperature_c}, '-2', 'temperature_c 201211210356-KEAU');
is($rpt->{temperature_f}, '28', 'temperature_f 201211210356-KEAU');
is($rpt->{templateout}, undef, 'templateout 201211210356-KEAU');
is($rpt->{tfile}, undef, 'tfile 201211210356-KEAU');
is($rpt->{thpressure}, undef, 'thpressure 201211210356-KEAU');
is($rpt->{time}, '0356', 'time 201211210356-KEAU');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210356-KEAU');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210356-KEAU');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210356-KEAU');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210356-KEAU');
is($rpt->{winddir}, '0', 'winddir 201211210356-KEAU');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210356-KEAU');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210356-KEAU');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210356-KEAU');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210356-KEAU');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210356-KEAU');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210356-KEAU');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210356-KEAU');
