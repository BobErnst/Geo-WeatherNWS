#!perl -T

use strict;
use warnings;

# Test 201211200155-KDBN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KDBN 200155Z AUTO 35004KT 10SM OVC036 16/10 A3019 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KDBN 200155Z AUTO 35004KT 10SM OVC036 16/10 A3019 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200155-KDBN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC036'], 'cloudlevel_arrayref 201211200155-KDBN');
is($rpt->{code}, 'KDBN', 'code 201211200155-KDBN');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KDBN');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KDBN');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200155-KDBN');
is($rpt->{day}, '20', 'day 201211200155-KDBN');
is($rpt->{dewpoint_c}, '10', 'dewpoint_c 201211200155-KDBN');
is($rpt->{dewpoint_f}, '50', 'dewpoint_f 201211200155-KDBN');
is($rpt->{error}, undef, 'error 201211200155-KDBN');
is($rpt->{errortext}, undef, 'errortext 201211200155-KDBN');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KDBN');
is($rpt->{heat_index_c}, '26', 'heat_index_c 201211200155-KDBN');
is($rpt->{heat_index_f}, '79', 'heat_index_f 201211200155-KDBN');
is($rpt->{http}, undef, 'http 201211200155-KDBN');
is($rpt->{intensity}, undef, 'intensity 201211200155-KDBN');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KDBN');
is($rpt->{obs}, '2012/11/20 01:55 KDBN 200155Z AUTO 35004KT 10SM OVC036 16/10 A3019 RMK AO2 ', 'obs 201211200155-KDBN');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KDBN');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211200155-KDBN');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211200155-KDBN');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211200155-KDBN');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200155-KDBN');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211200155-KDBN');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KDBN');
is($rpt->{relative_humidity}, '68', 'relative_humidity 201211200155-KDBN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200155-KDBN');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KDBN');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KDBN');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KDBN');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KDBN');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KDBN');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KDBN');
is($rpt->{storm}, undef, 'storm 201211200155-KDBN');
is($rpt->{temperature_c}, '16', 'temperature_c 201211200155-KDBN');
is($rpt->{temperature_f}, '61', 'temperature_f 201211200155-KDBN');
is($rpt->{templateout}, undef, 'templateout 201211200155-KDBN');
is($rpt->{tfile}, undef, 'tfile 201211200155-KDBN');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KDBN');
is($rpt->{time}, '0155', 'time 201211200155-KDBN');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KDBN');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KDBN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KDBN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KDBN');
is($rpt->{winddir}, '350', 'winddir 201211200155-KDBN');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211200155-KDBN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KDBN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KDBN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KDBN');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211200155-KDBN');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211200155-KDBN');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211200155-KDBN');
