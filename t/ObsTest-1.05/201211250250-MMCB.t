#!perl -T

use strict;
use warnings;

# Test 201211250250-MMCB
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/25 02:50 MMCB 250250Z 07004KT 7SM FEW220 18/08 A3016 RMK 8/008 HZY 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/25 02:50 MMCB 250250Z 07004KT 7SM FEW220 18/08 A3016 RMK 8/008 HZY ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211250250-MMCB');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW220'], 'cloudlevel_arrayref 201211250250-MMCB');
is($rpt->{code}, 'MMCB', 'code 201211250250-MMCB');
is($rpt->{conditions1}, undef, 'conditions1 201211250250-MMCB');
is($rpt->{conditions2}, undef, 'conditions2 201211250250-MMCB');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211250250-MMCB');
is($rpt->{day}, '25', 'day 201211250250-MMCB');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211250250-MMCB');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211250250-MMCB');
is($rpt->{error}, undef, 'error 201211250250-MMCB');
is($rpt->{errortext}, undef, 'errortext 201211250250-MMCB');
is($rpt->{eventbe}, undef, 'eventbe 201211250250-MMCB');
is($rpt->{heat_index_c}, '26', 'heat_index_c 201211250250-MMCB');
is($rpt->{heat_index_f}, '79', 'heat_index_f 201211250250-MMCB');
is($rpt->{http}, undef, 'http 201211250250-MMCB');
is($rpt->{intensity}, undef, 'intensity 201211250250-MMCB');
is($rpt->{maintenance}, undef, 'maintenance 201211250250-MMCB');
is($rpt->{obs}, '2012/11/25 02:50 MMCB 250250Z 07004KT 7SM FEW220 18/08 A3016 RMK 8/008 HZY ', 'obs 201211250250-MMCB');
is($rpt->{precipslr}, undef, 'precipslr 201211250250-MMCB');
is($rpt->{pressure_inhg}, '30.16', 'pressure_inhg 201211250250-MMCB');
is($rpt->{pressure_kgcm}, '1.041473056', 'pressure_kgcm 201211250250-MMCB');
is($rpt->{pressure_lbin}, '14.81320464', 'pressure_lbin 201211250250-MMCB');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211250250-MMCB');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211250250-MMCB');
is($rpt->{ptemperature}, undef, 'ptemperature 201211250250-MMCB');
is($rpt->{relative_humidity}, '52', 'relative_humidity 201211250250-MMCB');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','8/008','HZY'], 'remark_arrayref 201211250250-MMCB');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211250250-MMCB');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211250250-MMCB');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211250250-MMCB');
is($rpt->{slp_mb}, undef, 'slp_mb 201211250250-MMCB');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211250250-MMCB');
is($rpt->{station_type}, 'Manual', 'station_type 201211250250-MMCB');
is($rpt->{storm}, undef, 'storm 201211250250-MMCB');
is($rpt->{temperature_c}, '18', 'temperature_c 201211250250-MMCB');
is($rpt->{temperature_f}, '64', 'temperature_f 201211250250-MMCB');
is($rpt->{templateout}, undef, 'templateout 201211250250-MMCB');
is($rpt->{tfile}, undef, 'tfile 201211250250-MMCB');
is($rpt->{thpressure}, undef, 'thpressure 201211250250-MMCB');
is($rpt->{time}, '0250', 'time 201211250250-MMCB');
is($rpt->{visibility_km}, '11', 'visibility_km 201211250250-MMCB');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211250250-MMCB');
is($rpt->{windchill_c}, undef, 'windchill_c 201211250250-MMCB');
is($rpt->{windchill_f}, undef, 'windchill_f 201211250250-MMCB');
is($rpt->{winddir}, '70', 'winddir 201211250250-MMCB');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211250250-MMCB');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211250250-MMCB');
is($rpt->{windgustkts}, '0', 'windgustkts 201211250250-MMCB');
is($rpt->{windgustmph}, '0', 'windgustmph 201211250250-MMCB');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211250250-MMCB');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211250250-MMCB');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211250250-MMCB');
