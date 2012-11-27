#!perl -T

use strict;
use warnings;

# Test 201211181558-KLUF
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/18 15:58 KLUF 181558Z AUTO 36004KT 10SM CLR 17/05 A3009 RMK AO2 SLPNO T016    50047 $

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/18 15:58 KLUF 181558Z AUTO 36004KT 10SM CLR 17/05 A3009 RMK AO2 SLPNO T016    50047 $';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211181558-KLUF');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211181558-KLUF');
is($rpt->{code}, 'KLUF', 'code 201211181558-KLUF');
is($rpt->{conditions1}, undef, 'conditions1 201211181558-KLUF');
is($rpt->{conditions2}, undef, 'conditions2 201211181558-KLUF');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211181558-KLUF');
is($rpt->{day}, '18', 'day 201211181558-KLUF');
is($rpt->{dewpoint_c}, '05', 'dewpoint_c 201211181558-KLUF');
is($rpt->{dewpoint_f}, '41', 'dewpoint_f 201211181558-KLUF');
is($rpt->{error}, undef, 'error 201211181558-KLUF');
is($rpt->{errortext}, undef, 'errortext 201211181558-KLUF');
is($rpt->{eventbe}, undef, 'eventbe 201211181558-KLUF');
is($rpt->{heat_index_c}, '27', 'heat_index_c 201211181558-KLUF');
is($rpt->{heat_index_f}, '80', 'heat_index_f 201211181558-KLUF');
is($rpt->{http}, undef, 'http 201211181558-KLUF');
is($rpt->{intensity}, undef, 'intensity 201211181558-KLUF');
is($rpt->{maintenance}, '$', 'maintenance 201211181558-KLUF');
is($rpt->{obs}, '2012/11/18 15:58 KLUF 181558Z AUTO 36004KT 10SM CLR 17/05 A3009 RMK AO2 SLPNO T016    50047 $', 'obs 201211181558-KLUF');
is($rpt->{precipslr}, undef, 'precipslr 201211181558-KLUF');
is($rpt->{pressure_inhg}, '30.09', 'pressure_inhg 201211181558-KLUF');
is($rpt->{pressure_kgcm}, '1.039055844', 'pressure_kgcm 201211181558-KLUF');
is($rpt->{pressure_lbin}, '14.77882386', 'pressure_lbin 201211181558-KLUF');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211181558-KLUF');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211181558-KLUF');
is($rpt->{ptemperature}, 'T016', 'ptemperature 201211181558-KLUF');
is($rpt->{relative_humidity}, '45', 'relative_humidity 201211181558-KLUF');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1000,'T016','50047','$'], 'remark_arrayref 201211181558-KLUF');
is($rpt->{slp_inhg}, '29.53', 'slp_inhg 201211181558-KLUF');
is($rpt->{slp_kgcm}, '1.01972', 'slp_kgcm 201211181558-KLUF');
is($rpt->{slp_lbin}, '14.5038', 'slp_lbin 201211181558-KLUF');
is($rpt->{slp_mb}, '1000', 'slp_mb 201211181558-KLUF');
is($rpt->{slp_mmhg}, '750', 'slp_mmhg 201211181558-KLUF');
is($rpt->{station_type}, 'Automated', 'station_type 201211181558-KLUF');
is($rpt->{storm}, undef, 'storm 201211181558-KLUF');
is($rpt->{temperature_c}, '17', 'temperature_c 201211181558-KLUF');
is($rpt->{temperature_f}, '63', 'temperature_f 201211181558-KLUF');
is($rpt->{templateout}, undef, 'templateout 201211181558-KLUF');
is($rpt->{tfile}, undef, 'tfile 201211181558-KLUF');
is($rpt->{thpressure}, '50047', 'thpressure 201211181558-KLUF');
is($rpt->{time}, '1558', 'time 201211181558-KLUF');
is($rpt->{visibility_km}, '16', 'visibility_km 201211181558-KLUF');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211181558-KLUF');
is($rpt->{windchill_c}, undef, 'windchill_c 201211181558-KLUF');
is($rpt->{windchill_f}, undef, 'windchill_f 201211181558-KLUF');
is($rpt->{winddir}, '360', 'winddir 201211181558-KLUF');
is($rpt->{winddirtext}, 'North', 'winddirtext 201211181558-KLUF');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211181558-KLUF');
is($rpt->{windgustkts}, '0', 'windgustkts 201211181558-KLUF');
is($rpt->{windgustmph}, '0', 'windgustmph 201211181558-KLUF');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211181558-KLUF');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211181558-KLUF');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211181558-KLUF');
