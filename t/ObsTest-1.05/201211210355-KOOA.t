#!perl -T

use strict;
use warnings;

# Test 201211210355-KOOA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KOOA 210355Z AUTO 16004KT 1/4SM -RA OVC001 01/00 A3019 RMK AO2 T00080000 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KOOA 210355Z AUTO 16004KT 1/4SM -RA OVC001 01/00 A3019 RMK AO2 T00080000 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210355-KOOA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC001'], 'cloudlevel_arrayref 201211210355-KOOA');
is($rpt->{code}, 'KOOA', 'code 201211210355-KOOA');
is($rpt->{conditions1}, 'Rain', 'conditions1 201211210355-KOOA');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KOOA');
is($rpt->{conditionstext}, 'Light Rain', 'conditionstext 201211210355-KOOA');
is($rpt->{day}, '21', 'day 201211210355-KOOA');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210355-KOOA');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210355-KOOA');
is($rpt->{error}, undef, 'error 201211210355-KOOA');
is($rpt->{errortext}, undef, 'errortext 201211210355-KOOA');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KOOA');
is($rpt->{heat_index_c}, '61', 'heat_index_c 201211210355-KOOA');
is($rpt->{heat_index_f}, '142', 'heat_index_f 201211210355-KOOA');
is($rpt->{http}, undef, 'http 201211210355-KOOA');
is($rpt->{intensity}, 'Light', 'intensity 201211210355-KOOA');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KOOA');
is($rpt->{obs}, '2012/11/21 03:55 KOOA 210355Z AUTO 16004KT 1/4SM -RA OVC001 01/00 A3019 RMK AO2 T00080000 ', 'obs 201211210355-KOOA');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KOOA');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210355-KOOA');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210355-KOOA');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210355-KOOA');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210355-KOOA');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210355-KOOA');
is($rpt->{ptemperature}, 'T00080000', 'ptemperature 201211210355-KOOA');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211210355-KOOA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00080000'], 'remark_arrayref 201211210355-KOOA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KOOA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KOOA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KOOA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KOOA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KOOA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KOOA');
is($rpt->{storm}, undef, 'storm 201211210355-KOOA');
is($rpt->{temperature_c}, '01', 'temperature_c 201211210355-KOOA');
is($rpt->{temperature_f}, '34', 'temperature_f 201211210355-KOOA');
is($rpt->{templateout}, undef, 'templateout 201211210355-KOOA');
is($rpt->{tfile}, undef, 'tfile 201211210355-KOOA');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KOOA');
is($rpt->{time}, '0355', 'time 201211210355-KOOA');
is($rpt->{visibility_km}, '0', 'visibility_km 201211210355-KOOA');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210355-KOOA');
is($rpt->{windchill_c}, '-2', 'windchill_c 201211210355-KOOA');
is($rpt->{windchill_f}, '29', 'windchill_f 201211210355-KOOA');
is($rpt->{winddir}, '160', 'winddir 201211210355-KOOA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210355-KOOA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KOOA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KOOA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KOOA');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211210355-KOOA');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211210355-KOOA');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211210355-KOOA');
