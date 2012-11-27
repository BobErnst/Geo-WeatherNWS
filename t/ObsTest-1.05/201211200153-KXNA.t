#!perl -T

use strict;
use warnings;

# Test 201211200153-KXNA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KXNA 200153Z AUTO 18005KT 10SM CLR 10/07 A3017 RMK AO2 SLP216 T01000067 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KXNA 200153Z AUTO 18005KT 10SM CLR 10/07 A3017 RMK AO2 SLP216 T01000067 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200153-KXNA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200153-KXNA');
is($rpt->{code}, 'KXNA', 'code 201211200153-KXNA');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KXNA');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KXNA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200153-KXNA');
is($rpt->{day}, '20', 'day 201211200153-KXNA');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211200153-KXNA');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211200153-KXNA');
is($rpt->{error}, undef, 'error 201211200153-KXNA');
is($rpt->{errortext}, undef, 'errortext 201211200153-KXNA');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KXNA');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211200153-KXNA');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211200153-KXNA');
is($rpt->{http}, undef, 'http 201211200153-KXNA');
is($rpt->{intensity}, undef, 'intensity 201211200153-KXNA');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KXNA');
is($rpt->{obs}, '2012/11/20 01:53 KXNA 200153Z AUTO 18005KT 10SM CLR 10/07 A3017 RMK AO2 SLP216 T01000067 TSNO ', 'obs 201211200153-KXNA');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KXNA');
is($rpt->{pressure_inhg}, '30.17', 'pressure_inhg 201211200153-KXNA');
is($rpt->{pressure_kgcm}, '1.041818372', 'pressure_kgcm 201211200153-KXNA');
is($rpt->{pressure_lbin}, '14.81811618', 'pressure_lbin 201211200153-KXNA');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200153-KXNA');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211200153-KXNA');
is($rpt->{ptemperature}, 'T01000067', 'ptemperature 201211200153-KXNA');
is($rpt->{relative_humidity}, '82', 'relative_humidity 201211200153-KXNA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.6','T01000067','TSNO'], 'remark_arrayref 201211200153-KXNA');
is($rpt->{slp_inhg}, '30.16', 'slp_inhg 201211200153-KXNA');
is($rpt->{slp_kgcm}, '1.041745952', 'slp_kgcm 201211200153-KXNA');
is($rpt->{slp_lbin}, '14.81708208', 'slp_lbin 201211200153-KXNA');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211200153-KXNA');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211200153-KXNA');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KXNA');
is($rpt->{storm}, 'TSNO', 'storm 201211200153-KXNA');
is($rpt->{temperature_c}, '10', 'temperature_c 201211200153-KXNA');
is($rpt->{temperature_f}, '50', 'temperature_f 201211200153-KXNA');
is($rpt->{templateout}, undef, 'templateout 201211200153-KXNA');
is($rpt->{tfile}, undef, 'tfile 201211200153-KXNA');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KXNA');
is($rpt->{time}, '0153', 'time 201211200153-KXNA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KXNA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KXNA');
is($rpt->{windchill_c}, '9', 'windchill_c 201211200153-KXNA');
is($rpt->{windchill_f}, '48', 'windchill_f 201211200153-KXNA');
is($rpt->{winddir}, '180', 'winddir 201211200153-KXNA');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211200153-KXNA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KXNA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KXNA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KXNA');
is($rpt->{windspeedkmh}, '9', 'windspeedkmh 201211200153-KXNA');
is($rpt->{windspeedkts}, '5', 'windspeedkts 201211200153-KXNA');
is($rpt->{windspeedmph}, '6', 'windspeedmph 201211200153-KXNA');
