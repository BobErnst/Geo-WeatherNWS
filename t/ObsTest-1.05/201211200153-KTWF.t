#!perl -T

use strict;
use warnings;

# Test 201211200153-KTWF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KTWF 200153Z 18007KT 10SM FEW120 09/02 A3012 RMK AO2 SLP185 T00890017 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KTWF 200153Z 18007KT 10SM FEW120 09/02 A3012 RMK AO2 SLP185 T00890017 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211200153-KTWF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW120'], 'cloudlevel_arrayref 201211200153-KTWF');
is($rpt->{code}, 'KTWF', 'code 201211200153-KTWF');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KTWF');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KTWF');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211200153-KTWF');
is($rpt->{day}, '20', 'day 201211200153-KTWF');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211200153-KTWF');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211200153-KTWF');
is($rpt->{error}, undef, 'error 201211200153-KTWF');
is($rpt->{errortext}, undef, 'errortext 201211200153-KTWF');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KTWF');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211200153-KTWF');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211200153-KTWF');
is($rpt->{http}, undef, 'http 201211200153-KTWF');
is($rpt->{intensity}, undef, 'intensity 201211200153-KTWF');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KTWF');
is($rpt->{obs}, '2012/11/20 01:53 KTWF 200153Z 18007KT 10SM FEW120 09/02 A3012 RMK AO2 SLP185 T00890017 ', 'obs 201211200153-KTWF');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KTWF');
is($rpt->{pressure_inhg}, '30.12', 'pressure_inhg 201211200153-KTWF');
is($rpt->{pressure_kgcm}, '1.040091792', 'pressure_kgcm 201211200153-KTWF');
is($rpt->{pressure_lbin}, '14.79355848', 'pressure_lbin 201211200153-KTWF');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211200153-KTWF');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211200153-KTWF');
is($rpt->{ptemperature}, 'T00890017', 'ptemperature 201211200153-KTWF');
is($rpt->{relative_humidity}, '62', 'relative_humidity 201211200153-KTWF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1018.5','T00890017'], 'remark_arrayref 201211200153-KTWF');
is($rpt->{slp_inhg}, '30.07', 'slp_inhg 201211200153-KTWF');
is($rpt->{slp_kgcm}, '1.03858482', 'slp_kgcm 201211200153-KTWF');
is($rpt->{slp_lbin}, '14.7721203', 'slp_lbin 201211200153-KTWF');
is($rpt->{slp_mb}, '1018', 'slp_mb 201211200153-KTWF');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211200153-KTWF');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KTWF');
is($rpt->{storm}, undef, 'storm 201211200153-KTWF');
is($rpt->{temperature_c}, '09', 'temperature_c 201211200153-KTWF');
is($rpt->{temperature_f}, '48', 'temperature_f 201211200153-KTWF');
is($rpt->{templateout}, undef, 'templateout 201211200153-KTWF');
is($rpt->{tfile}, undef, 'tfile 201211200153-KTWF');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KTWF');
is($rpt->{time}, '0153', 'time 201211200153-KTWF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KTWF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KTWF');
is($rpt->{windchill_c}, '7', 'windchill_c 201211200153-KTWF');
is($rpt->{windchill_f}, '45', 'windchill_f 201211200153-KTWF');
is($rpt->{winddir}, '180', 'winddir 201211200153-KTWF');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211200153-KTWF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KTWF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KTWF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KTWF');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211200153-KTWF');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211200153-KTWF');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211200153-KTWF');
