#!perl -T

use strict;
use warnings;

# Test 201211210355-KVNP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KVNP 210355Z AUTO 25005KT 10SM CLR 17/15 A3019 RMK A01 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KVNP 210355Z AUTO 25005KT 10SM CLR 17/15 A3019 RMK A01 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KVNP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KVNP');
is($rpt->{code}, 'KVNP', 'code 201211210355-KVNP');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KVNP');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KVNP');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KVNP');
is($rpt->{day}, '21', 'day 201211210355-KVNP');
is($rpt->{dewpoint_c}, '15', 'dewpoint_c 201211210355-KVNP');
is($rpt->{dewpoint_f}, '59', 'dewpoint_f 201211210355-KVNP');
is($rpt->{error}, undef, 'error 201211210355-KVNP');
is($rpt->{errortext}, undef, 'errortext 201211210355-KVNP');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KVNP');
is($rpt->{heat_index_c}, '19', 'heat_index_c 201211210355-KVNP');
is($rpt->{heat_index_f}, '66', 'heat_index_f 201211210355-KVNP');
is($rpt->{http}, undef, 'http 201211210355-KVNP');
is($rpt->{intensity}, undef, 'intensity 201211210355-KVNP');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KVNP');
is($rpt->{obs}, '2012/11/21 03:55 KVNP 210355Z AUTO 25005KT 10SM CLR 17/15 A3019 RMK A01 ', 'obs 201211210355-KVNP');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KVNP');
is($rpt->{pressure_inhg}, '30.19', 'pressure_inhg 201211210355-KVNP');
is($rpt->{pressure_kgcm}, '1.042509004', 'pressure_kgcm 201211210355-KVNP');
is($rpt->{pressure_lbin}, '14.82793926', 'pressure_lbin 201211210355-KVNP');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211210355-KVNP');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210355-KVNP');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210355-KVNP');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211210355-KVNP');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','A01'], 'remark_arrayref 201211210355-KVNP');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KVNP');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KVNP');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KVNP');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KVNP');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KVNP');
is($rpt->{station_type}, 'Manual', 'station_type 201211210355-KVNP');
is($rpt->{storm}, undef, 'storm 201211210355-KVNP');
is($rpt->{temperature_c}, '17', 'temperature_c 201211210355-KVNP');
is($rpt->{temperature_f}, '63', 'temperature_f 201211210355-KVNP');
is($rpt->{templateout}, undef, 'templateout 201211210355-KVNP');
is($rpt->{tfile}, undef, 'tfile 201211210355-KVNP');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KVNP');
is($rpt->{time}, '0355', 'time 201211210355-KVNP');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KVNP');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KVNP');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KVNP');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KVNP');
is($rpt->{winddir}, '250', 'winddir 201211210355-KVNP');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211210355-KVNP');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KVNP');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KVNP');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KVNP');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210355-KVNP');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210355-KVNP');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210355-KVNP');
