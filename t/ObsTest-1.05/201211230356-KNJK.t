#!perl -T

use strict;
use warnings;

# Test 201211230356-KNJK
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:56 KNJK 230356Z AUTO 26003KT 10SM CLR 15/02 A3008 RMK AO2 SLP201 T01500017 TSNO $  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:56 KNJK 230356Z AUTO 26003KT 10SM CLR 15/02 A3008 RMK AO2 SLP201 T01500017 TSNO $  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230356-KNJK');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230356-KNJK');
is($rpt->{code}, 'KNJK', 'code 201211230356-KNJK');
is($rpt->{conditions1}, undef, 'conditions1 201211230356-KNJK');
is($rpt->{conditions2}, undef, 'conditions2 201211230356-KNJK');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230356-KNJK');
is($rpt->{day}, '23', 'day 201211230356-KNJK');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211230356-KNJK');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211230356-KNJK');
is($rpt->{error}, undef, 'error 201211230356-KNJK');
is($rpt->{errortext}, undef, 'errortext 201211230356-KNJK');
is($rpt->{eventbe}, undef, 'eventbe 201211230356-KNJK');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211230356-KNJK');
is($rpt->{heat_index_f}, '83', 'heat_index_f 201211230356-KNJK');
is($rpt->{http}, undef, 'http 201211230356-KNJK');
is($rpt->{intensity}, undef, 'intensity 201211230356-KNJK');
is($rpt->{maintenance}, '$', 'maintenance 201211230356-KNJK');
is($rpt->{obs}, '2012/11/23 03:56 KNJK 230356Z AUTO 26003KT 10SM CLR 15/02 A3008 RMK AO2 SLP201 T01500017 TSNO $  ', 'obs 201211230356-KNJK');
is($rpt->{precipslr}, undef, 'precipslr 201211230356-KNJK');
is($rpt->{pressure_inhg}, '30.08', 'pressure_inhg 201211230356-KNJK');
is($rpt->{pressure_kgcm}, '1.038710528', 'pressure_kgcm 201211230356-KNJK');
is($rpt->{pressure_lbin}, '14.77391232', 'pressure_lbin 201211230356-KNJK');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211230356-KNJK');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211230356-KNJK');
is($rpt->{ptemperature}, 'T01500017', 'ptemperature 201211230356-KNJK');
is($rpt->{relative_humidity}, '41', 'relative_humidity 201211230356-KNJK');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.1','T01500017','TSNO','$'], 'remark_arrayref 201211230356-KNJK');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211230356-KNJK');
is($rpt->{slp_kgcm}, '1.040216372', 'slp_kgcm 201211230356-KNJK');
is($rpt->{slp_lbin}, '14.79532638', 'slp_lbin 201211230356-KNJK');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211230356-KNJK');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211230356-KNJK');
is($rpt->{station_type}, 'Automated', 'station_type 201211230356-KNJK');
is($rpt->{storm}, 'TSNO', 'storm 201211230356-KNJK');
is($rpt->{temperature_c}, '15', 'temperature_c 201211230356-KNJK');
is($rpt->{temperature_f}, '59', 'temperature_f 201211230356-KNJK');
is($rpt->{templateout}, undef, 'templateout 201211230356-KNJK');
is($rpt->{tfile}, undef, 'tfile 201211230356-KNJK');
is($rpt->{thpressure}, undef, 'thpressure 201211230356-KNJK');
is($rpt->{time}, '0356', 'time 201211230356-KNJK');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230356-KNJK');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230356-KNJK');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230356-KNJK');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230356-KNJK');
is($rpt->{winddir}, '260', 'winddir 201211230356-KNJK');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211230356-KNJK');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230356-KNJK');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230356-KNJK');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230356-KNJK');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211230356-KNJK');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211230356-KNJK');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211230356-KNJK');
