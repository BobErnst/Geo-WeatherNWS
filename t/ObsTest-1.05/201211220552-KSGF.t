#!perl -T

use strict;
use warnings;

# Test 201211220552-KSGF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:52 KSGF 220552Z 16012KT 10SM CLR 10/04 A3011 RMK AO2 SLP192 T01000039 10122 20083 401940006 55009 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:52 KSGF 220552Z 16012KT 10SM CLR 10/04 A3011 RMK AO2 SLP192 T01000039 10122 20083 401940006 55009 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220552-KSGF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220552-KSGF');
is($rpt->{code}, 'KSGF', 'code 201211220552-KSGF');
is($rpt->{conditions1}, undef, 'conditions1 201211220552-KSGF');
is($rpt->{conditions2}, undef, 'conditions2 201211220552-KSGF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220552-KSGF');
is($rpt->{day}, '22', 'day 201211220552-KSGF');
is($rpt->{dewpoint_c}, '04', 'dewpoint_c 201211220552-KSGF');
is($rpt->{dewpoint_f}, '39', 'dewpoint_f 201211220552-KSGF');
is($rpt->{error}, undef, 'error 201211220552-KSGF');
is($rpt->{errortext}, undef, 'errortext 201211220552-KSGF');
is($rpt->{eventbe}, undef, 'eventbe 201211220552-KSGF');
is($rpt->{heat_index_c}, '37', 'heat_index_c 201211220552-KSGF');
is($rpt->{heat_index_f}, '99', 'heat_index_f 201211220552-KSGF');
is($rpt->{http}, undef, 'http 201211220552-KSGF');
is($rpt->{intensity}, undef, 'intensity 201211220552-KSGF');
is($rpt->{maintenance}, undef, 'maintenance 201211220552-KSGF');
is($rpt->{obs}, '2012/11/22 05:52 KSGF 220552Z 16012KT 10SM CLR 10/04 A3011 RMK AO2 SLP192 T01000039 10122 20083 401940006 55009 ', 'obs 201211220552-KSGF');
is($rpt->{precipslr}, undef, 'precipslr 201211220552-KSGF');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211220552-KSGF');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211220552-KSGF');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211220552-KSGF');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211220552-KSGF');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211220552-KSGF');
is($rpt->{ptemperature}, 'T01000039', 'ptemperature 201211220552-KSGF');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211220552-KSGF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1019.2','T01000039','10122','20083','401940006','55009'], 'remark_arrayref 201211220552-KSGF');
is($rpt->{slp_inhg}, '30.09', 'slp_inhg 201211220552-KSGF');
is($rpt->{slp_kgcm}, '1.039298624', 'slp_kgcm 201211220552-KSGF');
is($rpt->{slp_lbin}, '14.78227296', 'slp_lbin 201211220552-KSGF');
is($rpt->{slp_mb}, '1019', 'slp_mb 201211220552-KSGF');
is($rpt->{slp_mmhg}, '764', 'slp_mmhg 201211220552-KSGF');
is($rpt->{station_type}, 'Automated', 'station_type 201211220552-KSGF');
is($rpt->{storm}, undef, 'storm 201211220552-KSGF');
is($rpt->{temperature_c}, '10', 'temperature_c 201211220552-KSGF');
is($rpt->{temperature_f}, '50', 'temperature_f 201211220552-KSGF');
is($rpt->{templateout}, undef, 'templateout 201211220552-KSGF');
is($rpt->{tfile}, undef, 'tfile 201211220552-KSGF');
is($rpt->{thpressure}, '55009', 'thpressure 201211220552-KSGF');
is($rpt->{time}, '0552', 'time 201211220552-KSGF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220552-KSGF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220552-KSGF');
is($rpt->{windchill_c}, '7', 'windchill_c 201211220552-KSGF');
is($rpt->{windchill_f}, '45', 'windchill_f 201211220552-KSGF');
is($rpt->{winddir}, '160', 'winddir 201211220552-KSGF');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211220552-KSGF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220552-KSGF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220552-KSGF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220552-KSGF');
is($rpt->{windspeedkmh}, '22', 'windspeedkmh 201211220552-KSGF');
is($rpt->{windspeedkts}, '12', 'windspeedkts 201211220552-KSGF');
is($rpt->{windspeedmph}, '14', 'windspeedmph 201211220552-KSGF');
