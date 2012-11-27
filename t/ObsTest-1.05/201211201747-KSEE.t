#!perl -T

use strict;
use warnings;

# Test 201211201747-KSEE
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 17:47 KSEE 201747Z 00000KT 20SM SKC 18/08 A3015 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 17:47 KSEE 201747Z 00000KT 20SM SKC 18/08 A3015 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211201747-KSEE');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211201747-KSEE');
is($rpt->{code}, 'KSEE', 'code 201211201747-KSEE');
is($rpt->{conditions1}, undef, 'conditions1 201211201747-KSEE');
is($rpt->{conditions2}, undef, 'conditions2 201211201747-KSEE');
is($rpt->{conditionstext}, undef, 'conditionstext 201211201747-KSEE');
is($rpt->{day}, '20', 'day 201211201747-KSEE');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211201747-KSEE');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211201747-KSEE');
is($rpt->{error}, undef, 'error 201211201747-KSEE');
is($rpt->{errortext}, undef, 'errortext 201211201747-KSEE');
is($rpt->{eventbe}, undef, 'eventbe 201211201747-KSEE');
is($rpt->{heat_index_c}, '26', 'heat_index_c 201211201747-KSEE');
is($rpt->{heat_index_f}, '79', 'heat_index_f 201211201747-KSEE');
is($rpt->{http}, undef, 'http 201211201747-KSEE');
is($rpt->{intensity}, undef, 'intensity 201211201747-KSEE');
is($rpt->{maintenance}, undef, 'maintenance 201211201747-KSEE');
is($rpt->{obs}, '2012/11/20 17:47 KSEE 201747Z 00000KT 20SM SKC 18/08 A3015 ', 'obs 201211201747-KSEE');
is($rpt->{precipslr}, undef, 'precipslr 201211201747-KSEE');
is($rpt->{pressure_inhg}, '30.15', 'pressure_inhg 201211201747-KSEE');
is($rpt->{pressure_kgcm}, '1.04112774', 'pressure_kgcm 201211201747-KSEE');
is($rpt->{pressure_lbin}, '14.8082931', 'pressure_lbin 201211201747-KSEE');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211201747-KSEE');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211201747-KSEE');
is($rpt->{ptemperature}, undef, 'ptemperature 201211201747-KSEE');
is($rpt->{relative_humidity}, '52', 'relative_humidity 201211201747-KSEE');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211201747-KSEE');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211201747-KSEE');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211201747-KSEE');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211201747-KSEE');
is($rpt->{slp_mb}, undef, 'slp_mb 201211201747-KSEE');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211201747-KSEE');
is($rpt->{station_type}, 'Manual', 'station_type 201211201747-KSEE');
is($rpt->{storm}, undef, 'storm 201211201747-KSEE');
is($rpt->{temperature_c}, '18', 'temperature_c 201211201747-KSEE');
is($rpt->{temperature_f}, '64', 'temperature_f 201211201747-KSEE');
is($rpt->{templateout}, undef, 'templateout 201211201747-KSEE');
is($rpt->{tfile}, undef, 'tfile 201211201747-KSEE');
is($rpt->{thpressure}, undef, 'thpressure 201211201747-KSEE');
is($rpt->{time}, '1747', 'time 201211201747-KSEE');
is($rpt->{visibility_km}, '32', 'visibility_km 201211201747-KSEE');
is($rpt->{visibility_mi}, '20', 'visibility_mi 201211201747-KSEE');
is($rpt->{windchill_c}, undef, 'windchill_c 201211201747-KSEE');
is($rpt->{windchill_f}, undef, 'windchill_f 201211201747-KSEE');
is($rpt->{winddir}, '0', 'winddir 201211201747-KSEE');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211201747-KSEE');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211201747-KSEE');
is($rpt->{windgustkts}, '0', 'windgustkts 201211201747-KSEE');
is($rpt->{windgustmph}, '0', 'windgustmph 201211201747-KSEE');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211201747-KSEE');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211201747-KSEE');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211201747-KSEE');
