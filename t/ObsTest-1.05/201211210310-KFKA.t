#!perl -T

use strict;
use warnings;

# Test 201211210310-KFKA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:10 KFKA 210310Z AUTO 22005KT 7SM CLR 06/02 A3013 RMK AO2 T00610019 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:10 KFKA 210310Z AUTO 22005KT 7SM CLR 06/02 A3013 RMK AO2 T00610019 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210310-KFKA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210310-KFKA');
is($rpt->{code}, 'KFKA', 'code 201211210310-KFKA');
is($rpt->{conditions1}, undef, 'conditions1 201211210310-KFKA');
is($rpt->{conditions2}, undef, 'conditions2 201211210310-KFKA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210310-KFKA');
is($rpt->{day}, '21', 'day 201211210310-KFKA');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210310-KFKA');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210310-KFKA');
is($rpt->{error}, undef, 'error 201211210310-KFKA');
is($rpt->{errortext}, undef, 'errortext 201211210310-KFKA');
is($rpt->{eventbe}, undef, 'eventbe 201211210310-KFKA');
is($rpt->{heat_index_c}, '47', 'heat_index_c 201211210310-KFKA');
is($rpt->{heat_index_f}, '117', 'heat_index_f 201211210310-KFKA');
is($rpt->{http}, undef, 'http 201211210310-KFKA');
is($rpt->{intensity}, undef, 'intensity 201211210310-KFKA');
is($rpt->{maintenance}, undef, 'maintenance 201211210310-KFKA');
is($rpt->{obs}, '2012/11/21 03:10 KFKA 210310Z AUTO 22005KT 7SM CLR 06/02 A3013 RMK AO2 T00610019 ', 'obs 201211210310-KFKA');
is($rpt->{precipslr}, undef, 'precipslr 201211210310-KFKA');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210310-KFKA');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210310-KFKA');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210310-KFKA');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210310-KFKA');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210310-KFKA');
is($rpt->{ptemperature}, 'T00610019', 'ptemperature 201211210310-KFKA');
is($rpt->{relative_humidity}, '75', 'relative_humidity 201211210310-KFKA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00610019'], 'remark_arrayref 201211210310-KFKA');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210310-KFKA');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210310-KFKA');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210310-KFKA');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210310-KFKA');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210310-KFKA');
is($rpt->{station_type}, 'Automated', 'station_type 201211210310-KFKA');
is($rpt->{storm}, undef, 'storm 201211210310-KFKA');
is($rpt->{temperature_c}, '06', 'temperature_c 201211210310-KFKA');
is($rpt->{temperature_f}, '43', 'temperature_f 201211210310-KFKA');
is($rpt->{templateout}, undef, 'templateout 201211210310-KFKA');
is($rpt->{tfile}, undef, 'tfile 201211210310-KFKA');
is($rpt->{thpressure}, undef, 'thpressure 201211210310-KFKA');
is($rpt->{time}, '0310', 'time 201211210310-KFKA');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210310-KFKA');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210310-KFKA');
is($rpt->{windchill_c}, '4', 'windchill_c 201211210310-KFKA');
is($rpt->{windchill_f}, '39', 'windchill_f 201211210310-KFKA');
is($rpt->{winddir}, '220', 'winddir 201211210310-KFKA');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211210310-KFKA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210310-KFKA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210310-KFKA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210310-KFKA');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211210310-KFKA');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211210310-KFKA');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211210310-KFKA');
