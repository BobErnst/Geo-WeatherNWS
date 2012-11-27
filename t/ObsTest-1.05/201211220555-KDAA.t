#!perl -T

use strict;
use warnings;

# Test 201211220555-KDAA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:55 KDAA 220555Z AUTO 00000KT 10SM CLR M00/M02 A3023 RMK AO2 SLP240 T10011016 10051 21009 53002 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:55 KDAA 220555Z AUTO 00000KT 10SM CLR M00/M02 A3023 RMK AO2 SLP240 T10011016 10051 21009 53002 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220555-KDAA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220555-KDAA');
is($rpt->{code}, 'KDAA', 'code 201211220555-KDAA');
is($rpt->{conditions1}, undef, 'conditions1 201211220555-KDAA');
is($rpt->{conditions2}, undef, 'conditions2 201211220555-KDAA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220555-KDAA');
is($rpt->{day}, '22', 'day 201211220555-KDAA');
is($rpt->{dewpoint_c}, '-2', 'dewpoint_c 201211220555-KDAA');
is($rpt->{dewpoint_f}, '28', 'dewpoint_f 201211220555-KDAA');
is($rpt->{error}, undef, 'error 201211220555-KDAA');
is($rpt->{errortext}, undef, 'errortext 201211220555-KDAA');
is($rpt->{eventbe}, undef, 'eventbe 201211220555-KDAA');
is($rpt->{heat_index_c}, '71', 'heat_index_c 201211220555-KDAA');
is($rpt->{heat_index_f}, '160', 'heat_index_f 201211220555-KDAA');
is($rpt->{http}, undef, 'http 201211220555-KDAA');
is($rpt->{intensity}, undef, 'intensity 201211220555-KDAA');
is($rpt->{maintenance}, undef, 'maintenance 201211220555-KDAA');
is($rpt->{obs}, '2012/11/22 05:55 KDAA 220555Z AUTO 00000KT 10SM CLR M00/M02 A3023 RMK AO2 SLP240 T10011016 10051 21009 53002 ', 'obs 201211220555-KDAA');
is($rpt->{precipslr}, undef, 'precipslr 201211220555-KDAA');
is($rpt->{pressure_inhg}, '30.23', 'pressure_inhg 201211220555-KDAA');
is($rpt->{pressure_kgcm}, '1.043890268', 'pressure_kgcm 201211220555-KDAA');
is($rpt->{pressure_lbin}, '14.84758542', 'pressure_lbin 201211220555-KDAA');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211220555-KDAA');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220555-KDAA');
is($rpt->{ptemperature}, 'T10011016', 'ptemperature 201211220555-KDAA');
is($rpt->{relative_humidity}, '86', 'relative_humidity 201211220555-KDAA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1024,'T10011016','10051','21009','53002'], 'remark_arrayref 201211220555-KDAA');
is($rpt->{slp_inhg}, '30.23', 'slp_inhg 201211220555-KDAA');
is($rpt->{slp_kgcm}, '1.04419328', 'slp_kgcm 201211220555-KDAA');
is($rpt->{slp_lbin}, '14.8518912', 'slp_lbin 201211220555-KDAA');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211220555-KDAA');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211220555-KDAA');
is($rpt->{station_type}, 'Automated', 'station_type 201211220555-KDAA');
is($rpt->{storm}, undef, 'storm 201211220555-KDAA');
is($rpt->{temperature_c}, '0', 'temperature_c 201211220555-KDAA');
is($rpt->{temperature_f}, '32', 'temperature_f 201211220555-KDAA');
is($rpt->{templateout}, undef, 'templateout 201211220555-KDAA');
is($rpt->{tfile}, undef, 'tfile 201211220555-KDAA');
is($rpt->{thpressure}, '53002', 'thpressure 201211220555-KDAA');
is($rpt->{time}, '0555', 'time 201211220555-KDAA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220555-KDAA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220555-KDAA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220555-KDAA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220555-KDAA');
is($rpt->{winddir}, '0', 'winddir 201211220555-KDAA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220555-KDAA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220555-KDAA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220555-KDAA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220555-KDAA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220555-KDAA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220555-KDAA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220555-KDAA');
