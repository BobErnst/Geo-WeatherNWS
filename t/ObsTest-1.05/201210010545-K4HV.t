#!perl -T

use strict;
use warnings;

# Test 201210010545-K4HV
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/10/01 05:45 K4HV 010545Z 00000KT 10SM SKC 14/02 RMK NOSPECI T01390022 10322 20139 51010  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/10/01 05:45 K4HV 010545Z 00000KT 10SM SKC 14/02 RMK NOSPECI T01390022 10322 20139 51010  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201210010545-K4HV');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201210010545-K4HV');
is($rpt->{code}, 'K4HV', 'code 201210010545-K4HV');
is($rpt->{conditions1}, undef, 'conditions1 201210010545-K4HV');
is($rpt->{conditions2}, undef, 'conditions2 201210010545-K4HV');
is($rpt->{conditionstext}, undef, 'conditionstext 201210010545-K4HV');
is($rpt->{day}, '01', 'day 201210010545-K4HV');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201210010545-K4HV');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201210010545-K4HV');
is($rpt->{error}, undef, 'error 201210010545-K4HV');
is($rpt->{errortext}, undef, 'errortext 201210010545-K4HV');
is($rpt->{eventbe}, undef, 'eventbe 201210010545-K4HV');
is($rpt->{heat_index_c}, '30', 'heat_index_c 201210010545-K4HV');
is($rpt->{heat_index_f}, '86', 'heat_index_f 201210010545-K4HV');
is($rpt->{http}, undef, 'http 201210010545-K4HV');
is($rpt->{intensity}, undef, 'intensity 201210010545-K4HV');
is($rpt->{maintenance}, undef, 'maintenance 201210010545-K4HV');
is($rpt->{obs}, '2012/10/01 05:45 K4HV 010545Z 00000KT 10SM SKC 14/02 RMK NOSPECI T01390022 10322 20139 51010  ', 'obs 201210010545-K4HV');
is($rpt->{precipslr}, undef, 'precipslr 201210010545-K4HV');
is($rpt->{pressure_inhg}, undef, 'pressure_inhg 201210010545-K4HV');
is($rpt->{pressure_kgcm}, undef, 'pressure_kgcm 201210010545-K4HV');
is($rpt->{pressure_lbin}, undef, 'pressure_lbin 201210010545-K4HV');
is($rpt->{pressure_mb}, undef, 'pressure_mb 201210010545-K4HV');
is($rpt->{pressure_mmhg}, undef, 'pressure_mmhg 201210010545-K4HV');
is($rpt->{ptemperature}, 'T01390022', 'ptemperature 201210010545-K4HV');
is($rpt->{relative_humidity}, '44', 'relative_humidity 201210010545-K4HV');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','NOSPECI','T01390022','10322','20139','51010'], 'remark_arrayref 201210010545-K4HV');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201210010545-K4HV');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201210010545-K4HV');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201210010545-K4HV');
is($rpt->{slp_mb}, undef, 'slp_mb 201210010545-K4HV');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201210010545-K4HV');
is($rpt->{station_type}, 'Manual', 'station_type 201210010545-K4HV');
is($rpt->{storm}, undef, 'storm 201210010545-K4HV');
is($rpt->{temperature_c}, '14', 'temperature_c 201210010545-K4HV');
is($rpt->{temperature_f}, '57', 'temperature_f 201210010545-K4HV');
is($rpt->{templateout}, undef, 'templateout 201210010545-K4HV');
is($rpt->{tfile}, undef, 'tfile 201210010545-K4HV');
is($rpt->{thpressure}, '51010', 'thpressure 201210010545-K4HV');
is($rpt->{time}, '0545', 'time 201210010545-K4HV');
is($rpt->{visibility_km}, '16', 'visibility_km 201210010545-K4HV');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201210010545-K4HV');
is($rpt->{windchill_c}, undef, 'windchill_c 201210010545-K4HV');
is($rpt->{windchill_f}, undef, 'windchill_f 201210010545-K4HV');
is($rpt->{winddir}, '0', 'winddir 201210010545-K4HV');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201210010545-K4HV');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201210010545-K4HV');
is($rpt->{windgustkts}, '0', 'windgustkts 201210010545-K4HV');
is($rpt->{windgustmph}, '0', 'windgustmph 201210010545-K4HV');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201210010545-K4HV');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201210010545-K4HV');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201210010545-K4HV');
