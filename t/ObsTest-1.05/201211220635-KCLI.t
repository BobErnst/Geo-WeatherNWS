#!perl -T

use strict;
use warnings;

# Test 201211220635-KCLI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 06:35 KCLI 220635Z AUTO 20005KT 7SM CLR 07/06 A2991 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 06:35 KCLI 220635Z AUTO 20005KT 7SM CLR 07/06 A2991 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220635-KCLI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220635-KCLI');
is($rpt->{code}, 'KCLI', 'code 201211220635-KCLI');
is($rpt->{conditions1}, undef, 'conditions1 201211220635-KCLI');
is($rpt->{conditions2}, undef, 'conditions2 201211220635-KCLI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220635-KCLI');
is($rpt->{day}, '22', 'day 201211220635-KCLI');
is($rpt->{dewpoint_c}, '06', 'dewpoint_c 201211220635-KCLI');
is($rpt->{dewpoint_f}, '43', 'dewpoint_f 201211220635-KCLI');
is($rpt->{error}, undef, 'error 201211220635-KCLI');
is($rpt->{errortext}, undef, 'errortext 201211220635-KCLI');
is($rpt->{eventbe}, undef, 'eventbe 201211220635-KCLI');
is($rpt->{heat_index_c}, '35', 'heat_index_c 201211220635-KCLI');
is($rpt->{heat_index_f}, '94', 'heat_index_f 201211220635-KCLI');
is($rpt->{http}, undef, 'http 201211220635-KCLI');
is($rpt->{intensity}, undef, 'intensity 201211220635-KCLI');
is($rpt->{maintenance}, undef, 'maintenance 201211220635-KCLI');
is($rpt->{obs}, '2012/11/22 06:35 KCLI 220635Z AUTO 20005KT 7SM CLR 07/06 A2991 RMK AO2 ', 'obs 201211220635-KCLI');
is($rpt->{precipslr}, undef, 'precipslr 201211220635-KCLI');
is($rpt->{pressure_inhg}, '29.91', 'pressure_inhg 201211220635-KCLI');
is($rpt->{pressure_kgcm}, '1.032840156', 'pressure_kgcm 201211220635-KCLI');
is($rpt->{pressure_lbin}, '14.69041614', 'pressure_lbin 201211220635-KCLI');
is($rpt->{pressure_mb}, '1013', 'pressure_mb 201211220635-KCLI');
is($rpt->{pressure_mmhg}, '760', 'pressure_mmhg 201211220635-KCLI');
is($rpt->{ptemperature}, undef, 'ptemperature 201211220635-KCLI');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211220635-KCLI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211220635-KCLI');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211220635-KCLI');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211220635-KCLI');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211220635-KCLI');
is($rpt->{slp_mb}, undef, 'slp_mb 201211220635-KCLI');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211220635-KCLI');
is($rpt->{station_type}, 'Automated', 'station_type 201211220635-KCLI');
is($rpt->{storm}, undef, 'storm 201211220635-KCLI');
is($rpt->{temperature_c}, '07', 'temperature_c 201211220635-KCLI');
is($rpt->{temperature_f}, '45', 'temperature_f 201211220635-KCLI');
is($rpt->{templateout}, undef, 'templateout 201211220635-KCLI');
is($rpt->{tfile}, undef, 'tfile 201211220635-KCLI');
is($rpt->{thpressure}, undef, 'thpressure 201211220635-KCLI');
is($rpt->{time}, '0635', 'time 201211220635-KCLI');
is($rpt->{visibility_km}, '11', 'visibility_km 201211220635-KCLI');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211220635-KCLI');
is($rpt->{windchill_c}, '5', 'windchill_c 201211220635-KCLI');
is($rpt->{windchill_f}, '41', 'windchill_f 201211220635-KCLI');
is($rpt->{winddir}, '200', 'winddir 201211220635-KCLI');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220635-KCLI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220635-KCLI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220635-KCLI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220635-KCLI');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211220635-KCLI');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211220635-KCLI');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211220635-KCLI');
