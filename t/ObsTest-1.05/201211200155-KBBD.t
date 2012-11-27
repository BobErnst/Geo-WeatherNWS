#!perl -T

use strict;
use warnings;

# Test 201211200155-KBBD
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KBBD 200155Z AUTO 12004KT 10SM CLR 17/12 A3015 RMK 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KBBD 200155Z AUTO 12004KT 10SM CLR 17/12 A3015 RMK ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KBBD');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KBBD');
is($rpt->{code}, 'KBBD', 'code 201211200155-KBBD');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KBBD');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KBBD');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KBBD');
is($rpt->{day}, '20', 'day 201211200155-KBBD');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211200155-KBBD');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211200155-KBBD');
is($rpt->{error}, undef, 'error 201211200155-KBBD');
is($rpt->{errortext}, undef, 'errortext 201211200155-KBBD');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KBBD');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211200155-KBBD');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211200155-KBBD');
is($rpt->{http}, undef, 'http 201211200155-KBBD');
is($rpt->{intensity}, undef, 'intensity 201211200155-KBBD');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KBBD');
is($rpt->{obs}, '2012/11/20 01:55 KBBD 200155Z AUTO 12004KT 10SM CLR 17/12 A3015 RMK ', 'obs 201211200155-KBBD');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KBBD');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211200155-KBBD');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211200155-KBBD');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211200155-KBBD');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211200155-KBBD');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211200155-KBBD');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KBBD');
is($rpt->{relative_humidity}, '72', 'relative_humidity 201211200155-KBBD');
is_deeply(\$rpt->{remark_arrayref}, \['RMK'], 'remark_arrayref 201211200155-KBBD');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KBBD');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KBBD');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KBBD');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KBBD');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KBBD');
is($rpt->{station_type}, 'Manual', 'station_type 201211200155-KBBD');
is($rpt->{storm}, undef, 'storm 201211200155-KBBD');
is($rpt->{temperature_c}, '17', 'temperature_c 201211200155-KBBD');
is($rpt->{temperature_f}, '63', 'temperature_f 201211200155-KBBD');
is($rpt->{templateout}, undef, 'templateout 201211200155-KBBD');
is($rpt->{tfile}, undef, 'tfile 201211200155-KBBD');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KBBD');
is($rpt->{time}, '0155', 'time 201211200155-KBBD');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KBBD');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KBBD');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KBBD');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KBBD');
is($rpt->{winddir}, '120', 'winddir 201211200155-KBBD');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211200155-KBBD');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KBBD');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KBBD');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KBBD');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211200155-KBBD');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211200155-KBBD');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211200155-KBBD');
