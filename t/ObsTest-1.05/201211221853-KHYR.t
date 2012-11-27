#!perl -T

use strict;
use warnings;

# Test 201211221853-KHYR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 18:53 KHYR 221853Z AUTO VRB04KT 10SM CLR 15/04 A2957 RMK AO2 SLP015 T01500044 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 18:53 KHYR 221853Z AUTO VRB04KT 10SM CLR 15/04 A2957 RMK AO2 SLP015 T01500044 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211221853-KHYR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211221853-KHYR');
is($rpt->{code}, 'KHYR', 'code 201211221853-KHYR');
is($rpt->{conditions1}, undef, 'conditions1 201211221853-KHYR');
is($rpt->{conditions2}, undef, 'conditions2 201211221853-KHYR');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211221853-KHYR');
is($rpt->{day}, '22', 'day 201211221853-KHYR');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211221853-KHYR');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211221853-KHYR');
is($rpt->{error}, undef, 'error 201211221853-KHYR');
is($rpt->{errortext}, undef, 'errortext 201211221853-KHYR');
is($rpt->{eventbe}, undef, 'eventbe 201211221853-KHYR');
is($rpt->{heat_index_c}, '29', 'heat_index_c 201211221853-KHYR');
is($rpt->{heat_index_f}, '84', 'heat_index_f 201211221853-KHYR');
is($rpt->{http}, undef, 'http 201211221853-KHYR');
is($rpt->{intensity}, undef, 'intensity 201211221853-KHYR');
is($rpt->{maintenance}, '$', 'maintenance 201211221853-KHYR');
is($rpt->{obs}, '2012/11/22 18:53 KHYR 221853Z AUTO VRB04KT 10SM CLR 15/04 A2957 RMK AO2 SLP015 T01500044 $ ', 'obs 201211221853-KHYR');
is($rpt->{precipslr}, undef, 'precipslr 201211221853-KHYR');
is($rpt->{pressure_inhg}, '29.57', 'pressure_inhg 201211221853-KHYR');
is($rpt->{pressure_kgcm}, '1.021099412', 'pressure_kgcm 201211221853-KHYR');
is($rpt->{pressure_lbin}, '14.52342378', 'pressure_lbin 201211221853-KHYR');
is($rpt->{pressure_mb}, '1001', 'pressure_mb 201211221853-KHYR');
is($rpt->{pressure_mmhg}, '751', 'pressure_mmhg 201211221853-KHYR');
is($rpt->{ptemperature}, 'T01500044', 'ptemperature 201211221853-KHYR');
is($rpt->{relative_humidity}, '48', 'relative_humidity 201211221853-KHYR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1001.5','T01500044','$'], 'remark_arrayref 201211221853-KHYR');
is($rpt->{slp_inhg}, '29.57', 'slp_inhg 201211221853-KHYR');
is($rpt->{slp_kgcm}, '1.02124958', 'slp_kgcm 201211221853-KHYR');
is($rpt->{slp_lbin}, '14.5255557', 'slp_lbin 201211221853-KHYR');
is($rpt->{slp_mb}, '1002', 'slp_mb 201211221853-KHYR');
is($rpt->{slp_mmhg}, '751', 'slp_mmhg 201211221853-KHYR');
is($rpt->{station_type}, 'Automated', 'station_type 201211221853-KHYR');
is($rpt->{storm}, undef, 'storm 201211221853-KHYR');
is($rpt->{temperature_c}, '15', 'temperature_c 201211221853-KHYR');
is($rpt->{temperature_f}, '59', 'temperature_f 201211221853-KHYR');
is($rpt->{templateout}, undef, 'templateout 201211221853-KHYR');
is($rpt->{tfile}, undef, 'tfile 201211221853-KHYR');
is($rpt->{thpressure}, undef, 'thpressure 201211221853-KHYR');
is($rpt->{time}, '1853', 'time 201211221853-KHYR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211221853-KHYR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211221853-KHYR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211221853-KHYR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211221853-KHYR');
is($rpt->{winddir}, '4', 'winddir 201211221853-KHYR');
is($rpt->{winddirtext}, 'Variable', 'winddirtext 201211221853-KHYR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211221853-KHYR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211221853-KHYR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211221853-KHYR');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211221853-KHYR');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211221853-KHYR');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211221853-KHYR');
