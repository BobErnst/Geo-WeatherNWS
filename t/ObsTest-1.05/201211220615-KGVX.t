#!perl -T

use strict;
use warnings;

# Test 201211220615-KGVX
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:15 KGVX 220615Z AUTO 17009KT 9SM 22/15 A3019 RMK A01 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:15 KGVX 220615Z AUTO 17009KT 9SM 22/15 A3019 RMK A01 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211220615-KGVX');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211220615-KGVX');
is($rpt->{code}, 'KGVX', 'code 201211220615-KGVX');
is($rpt->{conditions1}, undef, 'conditions1 201211220615-KGVX');
is($rpt->{conditions2}, undef, 'conditions2 201211220615-KGVX');
is($rpt->{conditionstext}, undef, 'conditionstext 201211220615-KGVX');
is($rpt->{day}, '22', 'day 201211220615-KGVX');
is($rpt->{dewpoint_c}, '15', 'dewpoint_c 201211220615-KGVX');
is($rpt->{dewpoint_f}, '59', 'dewpoint_f 201211220615-KGVX');
is($rpt->{error}, undef, 'error 201211220615-KGVX');
is($rpt->{errortext}, undef, 'errortext 201211220615-KGVX');
is($rpt->{eventbe}, undef, 'eventbe 201211220615-KGVX');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211220615-KGVX');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211220615-KGVX');
is($rpt->{http}, undef, 'http 201211220615-KGVX');
is($rpt->{intensity}, undef, 'intensity 201211220615-KGVX');
is($rpt->{maintenance}, undef, 'maintenance 201211220615-KGVX');
is($rpt->{obs}, '2012/11/22 06:15 KGVX 220615Z AUTO 17009KT 9SM 22/15 A3019 RMK A01 ', 'obs 201211220615-KGVX');
is($rpt->{precipslr}, undef, 'precipslr 201211220615-KGVX');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211220615-KGVX');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211220615-KGVX');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211220615-KGVX');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211220615-KGVX');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211220615-KGVX');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220615-KGVX');
is($rpt->{relative_humidity}, '65', 'relative_humidity 201211220615-KGVX');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','A01'], 'remark_arrayref 201211220615-KGVX');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220615-KGVX');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220615-KGVX');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220615-KGVX');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220615-KGVX');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220615-KGVX');
is($rpt->{station_type}, 'Manual', 'station_type 201211220615-KGVX');
is($rpt->{storm}, undef, 'storm 201211220615-KGVX');
is($rpt->{temperature_c}, '22', 'temperature_c 201211220615-KGVX');
is($rpt->{temperature_f}, '72', 'temperature_f 201211220615-KGVX');
is($rpt->{templateout}, undef, 'templateout 201211220615-KGVX');
is($rpt->{tfile}, undef, 'tfile 201211220615-KGVX');
is($rpt->{thpressure}, undef, 'thpressure 201211220615-KGVX');
is($rpt->{time}, '0615', 'time 201211220615-KGVX');
is($rpt->{visibility_km}, '14', 'visibility_km 201211220615-KGVX');
is($rpt->{visibility_mi}, '9', 'visibility_mi 201211220615-KGVX');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220615-KGVX');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220615-KGVX');
is($rpt->{winddir}, '170', 'winddir 201211220615-KGVX');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220615-KGVX');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220615-KGVX');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220615-KGVX');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220615-KGVX');
is($rpt->{windspeedkmh}, '17', 'windspeedkmh 201211220615-KGVX');
is($rpt->{windspeedkts}, '9', 'windspeedkts 201211220615-KGVX');
is($rpt->{windspeedmph}, '10', 'windspeedmph 201211220615-KGVX');
