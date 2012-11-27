#!perl -T

use strict;
use warnings;

# Test 201211200155-KCBF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KCBF 200155Z AUTO 32007KT 10SM CLR 09/03 A3009 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KCBF 200155Z AUTO 32007KT 10SM CLR 09/03 A3009 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KCBF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KCBF');
is($rpt->{code}, 'KCBF', 'code 201211200155-KCBF');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KCBF');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KCBF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KCBF');
is($rpt->{day}, '20', 'day 201211200155-KCBF');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211200155-KCBF');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211200155-KCBF');
is($rpt->{error}, undef, 'error 201211200155-KCBF');
is($rpt->{errortext}, undef, 'errortext 201211200155-KCBF');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KCBF');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211200155-KCBF');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211200155-KCBF');
is($rpt->{http}, undef, 'http 201211200155-KCBF');
is($rpt->{intensity}, undef, 'intensity 201211200155-KCBF');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KCBF');
is($rpt->{obs}, '2012/11/20 01:55 KCBF 200155Z AUTO 32007KT 10SM CLR 09/03 A3009 RMK AO2 ', 'obs 201211200155-KCBF');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KCBF');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211200155-KCBF');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211200155-KCBF');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211200155-KCBF');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211200155-KCBF');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211200155-KCBF');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KCBF');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211200155-KCBF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200155-KCBF');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KCBF');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KCBF');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KCBF');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KCBF');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KCBF');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KCBF');
is($rpt->{storm}, undef, 'storm 201211200155-KCBF');
is($rpt->{temperature_c}, '09', 'temperature_c 201211200155-KCBF');
is($rpt->{temperature_f}, '48', 'temperature_f 201211200155-KCBF');
is($rpt->{templateout}, undef, 'templateout 201211200155-KCBF');
is($rpt->{tfile}, undef, 'tfile 201211200155-KCBF');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KCBF');
is($rpt->{time}, '0155', 'time 201211200155-KCBF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KCBF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KCBF');
is($rpt->{windchill_c}, '7', 'windchill_c 201211200155-KCBF');
is($rpt->{windchill_f}, '45', 'windchill_f 201211200155-KCBF');
is($rpt->{winddir}, '320', 'winddir 201211200155-KCBF');
is($rpt->{winddirtext}, 'Northwest', 'winddirtext 201211200155-KCBF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KCBF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KCBF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KCBF');
is($rpt->{windspeedkmh}, '13', 'windspeedkmh 201211200155-KCBF');
is($rpt->{windspeedkts}, '7', 'windspeedkts 201211200155-KCBF');
is($rpt->{windspeedmph}, '8', 'windspeedmph 201211200155-KCBF');
