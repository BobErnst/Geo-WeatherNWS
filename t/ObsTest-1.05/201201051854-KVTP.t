#!perl -T

use strict;
use warnings;

# Test 201201051854-KVTP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/01/05 18:54 KVTP 051854Z AUTO 10SM CLR 01/M13 A3031 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/01/05 18:54 KVTP 051854Z AUTO 10SM CLR 01/M13 A3031 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201201051854-KVTP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201201051854-KVTP');
is($rpt->{code}, 'KVTP', 'code 201201051854-KVTP');
is($rpt->{conditions1}, undef, 'conditions1 201201051854-KVTP');
is($rpt->{conditions2}, undef, 'conditions2 201201051854-KVTP');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201201051854-KVTP');
is($rpt->{day}, '05', 'day 201201051854-KVTP');
is($rpt->{dewpoint_c}, '-13', 'dewpoint_c 201201051854-KVTP');
is($rpt->{dewpoint_f}, '9', 'dewpoint_f 201201051854-KVTP');
is($rpt->{error}, undef, 'error 201201051854-KVTP');
is($rpt->{errortext}, undef, 'errortext 201201051854-KVTP');
is($rpt->{eventbe}, undef, 'eventbe 201201051854-KVTP');
is($rpt->{heat_index_c}, '49', 'heat_index_c 201201051854-KVTP');
is($rpt->{heat_index_f}, '121', 'heat_index_f 201201051854-KVTP');
is($rpt->{http}, undef, 'http 201201051854-KVTP');
is($rpt->{intensity}, undef, 'intensity 201201051854-KVTP');
is($rpt->{maintenance}, undef, 'maintenance 201201051854-KVTP');
is($rpt->{obs}, '2012/01/05 18:54 KVTP 051854Z AUTO 10SM CLR 01/M13 A3031 RMK AO2 ', 'obs 201201051854-KVTP');
is($rpt->{precipslr}, undef, 'precipslr 201201051854-KVTP');
is($rpt->{pressure_inhg}, '30.31', 'pressure_inhg 201201051854-KVTP');
is($rpt->{pressure_kgcm}, '1.046652796', 'pressure_kgcm 201201051854-KVTP');
is($rpt->{pressure_lbin}, '14.88687774', 'pressure_lbin 201201051854-KVTP');
is($rpt->{pressure_mb}, '1026', 'pressure_mb 201201051854-KVTP');
is($rpt->{pressure_mmhg}, '770', 'pressure_mmhg 201201051854-KVTP');
is($rpt->{ptemperature}, undef, 'ptemperature 201201051854-KVTP');
is($rpt->{relative_humidity}, '34', 'relative_humidity 201201051854-KVTP');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201201051854-KVTP');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201201051854-KVTP');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201201051854-KVTP');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201201051854-KVTP');
is($rpt->{slp_mb}, undef, 'slp_mb 201201051854-KVTP');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201201051854-KVTP');
is($rpt->{station_type}, 'Automated', 'station_type 201201051854-KVTP');
is($rpt->{storm}, undef, 'storm 201201051854-KVTP');
is($rpt->{temperature_c}, '01', 'temperature_c 201201051854-KVTP');
is($rpt->{temperature_f}, '34', 'temperature_f 201201051854-KVTP');
is($rpt->{templateout}, undef, 'templateout 201201051854-KVTP');
is($rpt->{tfile}, undef, 'tfile 201201051854-KVTP');
is($rpt->{thpressure}, undef, 'thpressure 201201051854-KVTP');
is($rpt->{time}, '1854', 'time 201201051854-KVTP');
is($rpt->{visibility_km}, '16', 'visibility_km 201201051854-KVTP');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201201051854-KVTP');
is($rpt->{windchill_c}, undef, 'windchill_c 201201051854-KVTP');
is($rpt->{windchill_f}, undef, 'windchill_f 201201051854-KVTP');
is($rpt->{winddir}, undef, 'winddir 201201051854-KVTP');
is($rpt->{winddirtext}, undef, 'winddirtext 201201051854-KVTP');
is($rpt->{windgustkmh}, undef, 'windgustkmh 201201051854-KVTP');
is($rpt->{windgustkts}, undef, 'windgustkts 201201051854-KVTP');
is($rpt->{windgustmph}, undef, 'windgustmph 201201051854-KVTP');
is($rpt->{windspeedkmh}, undef, 'windspeedkmh 201201051854-KVTP');
is($rpt->{windspeedkts}, undef, 'windspeedkts 201201051854-KVTP');
is($rpt->{windspeedmph}, undef, 'windspeedmph 201201051854-KVTP');
