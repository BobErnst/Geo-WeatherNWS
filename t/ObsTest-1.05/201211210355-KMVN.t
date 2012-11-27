#!perl -T

use strict;
use warnings;

# Test 201211210355-KMVN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KMVN 210355Z AUTO 00000KT 10SM OVC046 12/08 A3019 RMK AO1 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KMVN 210355Z AUTO 00000KT 10SM OVC046 12/08 A3019 RMK AO1 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210355-KMVN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC046'], 'cloudlevel_arrayref 201211210355-KMVN');
is($rpt->{code}, 'KMVN', 'code 201211210355-KMVN');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KMVN');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KMVN');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210355-KMVN');
is($rpt->{day}, '21', 'day 201211210355-KMVN');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211210355-KMVN');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211210355-KMVN');
is($rpt->{error}, undef, 'error 201211210355-KMVN');
is($rpt->{errortext}, undef, 'errortext 201211210355-KMVN');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KMVN');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201211210355-KMVN');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211210355-KMVN');
is($rpt->{http}, undef, 'http 201211210355-KMVN');
is($rpt->{intensity}, undef, 'intensity 201211210355-KMVN');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KMVN');
is($rpt->{obs}, '2012/11/21 03:55 KMVN 210355Z AUTO 00000KT 10SM OVC046 12/08 A3019 RMK AO1 ', 'obs 201211210355-KMVN');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KMVN');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210355-KMVN');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210355-KMVN');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210355-KMVN');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210355-KMVN');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210355-KMVN');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KMVN');
is($rpt->{relative_humidity}, '77', 'relative_humidity 201211210355-KMVN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO1'], 'remark_arrayref 201211210355-KMVN');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KMVN');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KMVN');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KMVN');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KMVN');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KMVN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KMVN');
is($rpt->{storm}, undef, 'storm 201211210355-KMVN');
is($rpt->{temperature_c}, '12', 'temperature_c 201211210355-KMVN');
is($rpt->{temperature_f}, '54', 'temperature_f 201211210355-KMVN');
is($rpt->{templateout}, undef, 'templateout 201211210355-KMVN');
is($rpt->{tfile}, undef, 'tfile 201211210355-KMVN');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KMVN');
is($rpt->{time}, '0355', 'time 201211210355-KMVN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KMVN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KMVN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KMVN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KMVN');
is($rpt->{winddir}, '0', 'winddir 201211210355-KMVN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KMVN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KMVN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KMVN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KMVN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KMVN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KMVN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KMVN');
