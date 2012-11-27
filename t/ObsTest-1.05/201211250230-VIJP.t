#!perl -T

use strict;
use warnings;

# Test 201211250230-VIJP
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/25 02:30 VIJP 250230Z 00000KT 1600 R27/1900N FU FEW100 16/07 Q1017 NOSIG 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/25 02:30 VIJP 250230Z 00000KT 1600 R27/1900N FU FEW100 16/07 Q1017 NOSIG ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Fair', 'cloudcover 201211250230-VIJP');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW100'], 'cloudlevel_arrayref 201211250230-VIJP');
is($rpt->{code}, 'VIJP', 'code 201211250230-VIJP');
is($rpt->{conditions1}, 'Smoke', 'conditions1 201211250230-VIJP');
is($rpt->{conditions2}, undef, 'conditions2 201211250230-VIJP');
is($rpt->{conditionstext}, 'Smoke', 'conditionstext 201211250230-VIJP');
is($rpt->{day}, '25', 'day 201211250230-VIJP');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211250230-VIJP');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211250230-VIJP');
is($rpt->{error}, undef, 'error 201211250230-VIJP');
is($rpt->{errortext}, undef, 'errortext 201211250230-VIJP');
is($rpt->{eventbe}, undef, 'eventbe 201211250230-VIJP');
is($rpt->{heat_index_c}, '28', 'heat_index_c 201211250230-VIJP');
is($rpt->{heat_index_f}, '82', 'heat_index_f 201211250230-VIJP');
is($rpt->{http}, undef, 'http 201211250230-VIJP');
is($rpt->{intensity}, undef, 'intensity 201211250230-VIJP');
is($rpt->{maintenance}, undef, 'maintenance 201211250230-VIJP');
is($rpt->{obs}, '2012/11/25 02:30 VIJP 250230Z 00000KT 1600 R27/1900N FU FEW100 16/07 Q1017 NOSIG ', 'obs 201211250230-VIJP');
is($rpt->{precipslr}, undef, 'precipslr 201211250230-VIJP');
is($rpt->{pressure_inhg}, '30.03', 'pressure_inhg 201211250230-VIJP');
is($rpt->{pressure_kgcm}, '1.036983948', 'pressure_kgcm 201211250230-VIJP');
is($rpt->{pressure_lbin}, '14.74935462', 'pressure_lbin 201211250230-VIJP');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211250230-VIJP');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211250230-VIJP');
is($rpt->{ptemperature}, undef, 'ptemperature 201211250230-VIJP');
is($rpt->{relative_humidity}, '55', 'relative_humidity 201211250230-VIJP');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211250230-VIJP');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211250230-VIJP');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211250230-VIJP');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211250230-VIJP');
is($rpt->{slp_mb}, undef, 'slp_mb 201211250230-VIJP');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211250230-VIJP');
is($rpt->{station_type}, 'Manual', 'station_type 201211250230-VIJP');
is($rpt->{storm}, undef, 'storm 201211250230-VIJP');
is($rpt->{temperature_c}, '16', 'temperature_c 201211250230-VIJP');
is($rpt->{temperature_f}, '61', 'temperature_f 201211250230-VIJP');
is($rpt->{templateout}, undef, 'templateout 201211250230-VIJP');
is($rpt->{tfile}, undef, 'tfile 201211250230-VIJP');
is($rpt->{thpressure}, undef, 'thpressure 201211250230-VIJP');
is($rpt->{time}, '0230', 'time 201211250230-VIJP');
is($rpt->{visibility_km}, undef, 'visibility_km 201211250230-VIJP');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211250230-VIJP');
is($rpt->{windchill_c}, undef, 'windchill_c 201211250230-VIJP');
is($rpt->{windchill_f}, undef, 'windchill_f 201211250230-VIJP');
is($rpt->{winddir}, '0', 'winddir 201211250230-VIJP');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211250230-VIJP');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211250230-VIJP');
is($rpt->{windgustkts}, '0', 'windgustkts 201211250230-VIJP');
is($rpt->{windgustmph}, '0', 'windgustmph 201211250230-VIJP');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211250230-VIJP');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211250230-VIJP');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211250230-VIJP');
