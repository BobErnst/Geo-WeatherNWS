#!perl -T

use strict;
use warnings;

# Test 201211210355-KALN
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KALN 210355Z AUTO 00000KT 4SM BR CLR 11/09 A3020 RMK AO2 T01120090 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KALN 210355Z AUTO 00000KT 4SM BR CLR 11/09 A3020 RMK AO2 T01120090 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KALN');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KALN');
is($rpt->{code}, 'KALN', 'code 201211210355-KALN');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210355-KALN');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KALN');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210355-KALN');
is($rpt->{day}, '21', 'day 201211210355-KALN');
is($rpt->{dewpoint_c}, '09', 'dewpoint_c 201211210355-KALN');
is($rpt->{dewpoint_f}, '48', 'dewpoint_f 201211210355-KALN');
is($rpt->{error}, undef, 'error 201211210355-KALN');
is($rpt->{errortext}, undef, 'errortext 201211210355-KALN');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KALN');
is($rpt->{heat_index_c}, '27', 'heat_index_c 201211210355-KALN');
is($rpt->{heat_index_f}, '81', 'heat_index_f 201211210355-KALN');
is($rpt->{http}, undef, 'http 201211210355-KALN');
is($rpt->{intensity}, undef, 'intensity 201211210355-KALN');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KALN');
is($rpt->{obs}, '2012/11/21 03:55 KALN 210355Z AUTO 00000KT 4SM BR CLR 11/09 A3020 RMK AO2 T01120090 TSNO ', 'obs 201211210355-KALN');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KALN');
is($rpt->{pressure_inhg}, '30.20', 'pressure_inhg 201211210355-KALN');
is($rpt->{pressure_kgcm}, '1.04285432', 'pressure_kgcm 201211210355-KALN');
is($rpt->{pressure_lbin}, '14.8328508', 'pressure_lbin 201211210355-KALN');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211210355-KALN');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211210355-KALN');
is($rpt->{ptemperature}, 'T01120090', 'ptemperature 201211210355-KALN');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211210355-KALN');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T01120090','TSNO'], 'remark_arrayref 201211210355-KALN');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KALN');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KALN');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KALN');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KALN');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KALN');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KALN');
is($rpt->{storm}, 'TSNO', 'storm 201211210355-KALN');
is($rpt->{temperature_c}, '11', 'temperature_c 201211210355-KALN');
is($rpt->{temperature_f}, '52', 'temperature_f 201211210355-KALN');
is($rpt->{templateout}, undef, 'templateout 201211210355-KALN');
is($rpt->{tfile}, undef, 'tfile 201211210355-KALN');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KALN');
is($rpt->{time}, '0355', 'time 201211210355-KALN');
is($rpt->{visibility_km}, '6', 'visibility_km 201211210355-KALN');
is($rpt->{visibility_mi}, '4', 'visibility_mi 201211210355-KALN');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KALN');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KALN');
is($rpt->{winddir}, '0', 'winddir 201211210355-KALN');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210355-KALN');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KALN');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KALN');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KALN');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210355-KALN');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210355-KALN');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210355-KALN');
