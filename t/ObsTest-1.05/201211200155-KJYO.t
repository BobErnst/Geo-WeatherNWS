#!perl -T

use strict;
use warnings;

# Test 201211200155-KJYO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KJYO 200155Z AUTO 00000KT 10SM CLR 05/03 A3028 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KJYO 200155Z AUTO 00000KT 10SM CLR 05/03 A3028 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KJYO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KJYO');
is($rpt->{code}, 'KJYO', 'code 201211200155-KJYO');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KJYO');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KJYO');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KJYO');
is($rpt->{day}, '20', 'day 201211200155-KJYO');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211200155-KJYO');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211200155-KJYO');
is($rpt->{error}, undef, 'error 201211200155-KJYO');
is($rpt->{errortext}, undef, 'errortext 201211200155-KJYO');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KJYO');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211200155-KJYO');
is($rpt->{heat_index_f}, '115', 'heat_index_f 201211200155-KJYO');
is($rpt->{http}, undef, 'http 201211200155-KJYO');
is($rpt->{intensity}, undef, 'intensity 201211200155-KJYO');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KJYO');
is($rpt->{obs}, '2012/11/20 01:55 KJYO 200155Z AUTO 00000KT 10SM CLR 05/03 A3028 RMK AO2 ', 'obs 201211200155-KJYO');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KJYO');
is($rpt->{pressure_inhg}, '30.28', 'pressure_inhg 201211200155-KJYO');
is($rpt->{pressure_kgcm}, '1.045616848', 'pressure_kgcm 201211200155-KJYO');
is($rpt->{pressure_lbin}, '14.87214312', 'pressure_lbin 201211200155-KJYO');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211200155-KJYO');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211200155-KJYO');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KJYO');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211200155-KJYO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200155-KJYO');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KJYO');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KJYO');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KJYO');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KJYO');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KJYO');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KJYO');
is($rpt->{storm}, undef, 'storm 201211200155-KJYO');
is($rpt->{temperature_c}, '05', 'temperature_c 201211200155-KJYO');
is($rpt->{temperature_f}, '41', 'temperature_f 201211200155-KJYO');
is($rpt->{templateout}, undef, 'templateout 201211200155-KJYO');
is($rpt->{tfile}, undef, 'tfile 201211200155-KJYO');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KJYO');
is($rpt->{time}, '0155', 'time 201211200155-KJYO');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KJYO');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KJYO');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KJYO');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KJYO');
is($rpt->{winddir}, '0', 'winddir 201211200155-KJYO');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211200155-KJYO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KJYO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KJYO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KJYO');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211200155-KJYO');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211200155-KJYO');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211200155-KJYO');
