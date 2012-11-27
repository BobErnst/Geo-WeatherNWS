#!perl -T

use strict;
use warnings;

# Test 201211220056-KNRS
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 00:56 KNRS 220056Z 00000KT 8SM FEW017 SCT200 15/13 A3004 RMK AO2 SLP171 T01500128 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 00:56 KNRS 220056Z 00000KT 8SM FEW017 SCT200 15/13 A3004 RMK AO2 SLP171 T01500128 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Partly Cloudy', 'cloudcover 201211220056-KNRS');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW017','SCT200'], 'cloudlevel_arrayref 201211220056-KNRS');
is($rpt->{code}, 'KNRS', 'code 201211220056-KNRS');
is($rpt->{conditions1}, undef, 'conditions1 201211220056-KNRS');
is($rpt->{conditions2}, undef, 'conditions2 201211220056-KNRS');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211220056-KNRS');
is($rpt->{day}, '22', 'day 201211220056-KNRS');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211220056-KNRS');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211220056-KNRS');
is($rpt->{error}, undef, 'error 201211220056-KNRS');
is($rpt->{errortext}, undef, 'errortext 201211220056-KNRS');
is($rpt->{eventbe}, undef, 'eventbe 201211220056-KNRS');
is($rpt->{heat_index_c}, '20', 'heat_index_c 201211220056-KNRS');
is($rpt->{heat_index_f}, '68', 'heat_index_f 201211220056-KNRS');
is($rpt->{http}, undef, 'http 201211220056-KNRS');
is($rpt->{intensity}, undef, 'intensity 201211220056-KNRS');
is($rpt->{maintenance}, '$', 'maintenance 201211220056-KNRS');
is($rpt->{obs}, '2012/11/22 00:56 KNRS 220056Z 00000KT 8SM FEW017 SCT200 15/13 A3004 RMK AO2 SLP171 T01500128 $ ', 'obs 201211220056-KNRS');
is($rpt->{precipslr}, undef, 'precipslr 201211220056-KNRS');
is($rpt->{pressure_inhg}, '30.04', 'pressure_inhg 201211220056-KNRS');
is($rpt->{pressure_kgcm}, '1.037329264', 'pressure_kgcm 201211220056-KNRS');
is($rpt->{pressure_lbin}, '14.75426616', 'pressure_lbin 201211220056-KNRS');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211220056-KNRS');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211220056-KNRS');
is($rpt->{ptemperature}, 'T01500128', 'ptemperature 201211220056-KNRS');
is($rpt->{relative_humidity}, '88', 'relative_humidity 201211220056-KNRS');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1017.1','T01500128','$'], 'remark_arrayref 201211220056-KNRS');
is($rpt->{slp_inhg}, '30.03', 'slp_inhg 201211220056-KNRS');
is($rpt->{slp_kgcm}, '1.037157212', 'slp_kgcm 201211220056-KNRS');
is($rpt->{slp_lbin}, '14.75181498', 'slp_lbin 201211220056-KNRS');
is($rpt->{slp_mb}, '1017', 'slp_mb 201211220056-KNRS');
is($rpt->{slp_mmhg}, '763', 'slp_mmhg 201211220056-KNRS');
is($rpt->{station_type}, 'Automated', 'station_type 201211220056-KNRS');
is($rpt->{storm}, undef, 'storm 201211220056-KNRS');
is($rpt->{temperature_c}, '15', 'temperature_c 201211220056-KNRS');
is($rpt->{temperature_f}, '59', 'temperature_f 201211220056-KNRS');
is($rpt->{templateout}, undef, 'templateout 201211220056-KNRS');
is($rpt->{tfile}, undef, 'tfile 201211220056-KNRS');
is($rpt->{thpressure}, undef, 'thpressure 201211220056-KNRS');
is($rpt->{time}, '0056', 'time 201211220056-KNRS');
is($rpt->{visibility_km}, '13', 'visibility_km 201211220056-KNRS');
is($rpt->{visibility_mi}, '8', 'visibility_mi 201211220056-KNRS');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220056-KNRS');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220056-KNRS');
is($rpt->{winddir}, '0', 'winddir 201211220056-KNRS');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220056-KNRS');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220056-KNRS');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220056-KNRS');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220056-KNRS');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220056-KNRS');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220056-KNRS');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220056-KNRS');
