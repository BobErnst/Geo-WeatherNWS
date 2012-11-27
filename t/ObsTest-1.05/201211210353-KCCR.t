#!perl -T

use strict;
use warnings;

# Test 201211210353-KCCR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:53 KCCR 210353Z AUTO 18011KT 10SM FEW070 OVC100 17/12 A3003 RMK AO2 SLP154 T01670117 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:53 KCCR 210353Z AUTO 18011KT 10SM FEW070 OVC100 17/12 A3003 RMK AO2 SLP154 T01670117 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210353-KCCR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['FEW070','OVC100'], 'cloudlevel_arrayref 201211210353-KCCR');
is($rpt->{code}, 'KCCR', 'code 201211210353-KCCR');
is($rpt->{conditions1}, undef, 'conditions1 201211210353-KCCR');
is($rpt->{conditions2}, undef, 'conditions2 201211210353-KCCR');
is($rpt->{conditionstext}, 'Fair', 'conditionstext 201211210353-KCCR');
is($rpt->{day}, '21', 'day 201211210353-KCCR');
is($rpt->{dewpoint_c}, '12', 'dewpoint_c 201211210353-KCCR');
is($rpt->{dewpoint_f}, '54', 'dewpoint_f 201211210353-KCCR');
is($rpt->{error}, undef, 'error 201211210353-KCCR');
is($rpt->{errortext}, undef, 'errortext 201211210353-KCCR');
is($rpt->{eventbe}, undef, 'eventbe 201211210353-KCCR');
is($rpt->{heat_index_c}, '24', 'heat_index_c 201211210353-KCCR');
is($rpt->{heat_index_f}, '75', 'heat_index_f 201211210353-KCCR');
is($rpt->{http}, undef, 'http 201211210353-KCCR');
is($rpt->{intensity}, undef, 'intensity 201211210353-KCCR');
is($rpt->{maintenance}, undef, 'maintenance 201211210353-KCCR');
is($rpt->{obs}, '2012/11/21 03:53 KCCR 210353Z AUTO 18011KT 10SM FEW070 OVC100 17/12 A3003 RMK AO2 SLP154 T01670117 TSNO ', 'obs 201211210353-KCCR');
is($rpt->{precipslr}, undef, 'precipslr 201211210353-KCCR');
is($rpt->{pressure_inhg}, '30.03', 'pressure_inhg 201211210353-KCCR');
is($rpt->{pressure_kgcm}, '1.036983948', 'pressure_kgcm 201211210353-KCCR');
is($rpt->{pressure_lbin}, '14.74935462', 'pressure_lbin 201211210353-KCCR');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211210353-KCCR');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210353-KCCR');
is($rpt->{ptemperature}, 'T01670117', 'ptemperature 201211210353-KCCR');
is($rpt->{relative_humidity}, '72', 'relative_humidity 201211210353-KCCR');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1015.4','T01670117','TSNO'], 'remark_arrayref 201211210353-KCCR');
is($rpt->{slp_inhg}, '29.98', 'slp_inhg 201211210353-KCCR');
is($rpt->{slp_kgcm}, '1.035423688', 'slp_kgcm 201211210353-KCCR');
is($rpt->{slp_lbin}, '14.72715852', 'slp_lbin 201211210353-KCCR');
is($rpt->{slp_mb}, '1015', 'slp_mb 201211210353-KCCR');
is($rpt->{slp_mmhg}, '762', 'slp_mmhg 201211210353-KCCR');
is($rpt->{station_type}, 'Automated', 'station_type 201211210353-KCCR');
is($rpt->{storm}, 'TSNO', 'storm 201211210353-KCCR');
is($rpt->{temperature_c}, '17', 'temperature_c 201211210353-KCCR');
is($rpt->{temperature_f}, '63', 'temperature_f 201211210353-KCCR');
is($rpt->{templateout}, undef, 'templateout 201211210353-KCCR');
is($rpt->{tfile}, undef, 'tfile 201211210353-KCCR');
is($rpt->{thpressure}, undef, 'thpressure 201211210353-KCCR');
is($rpt->{time}, '0353', 'time 201211210353-KCCR');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210353-KCCR');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210353-KCCR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210353-KCCR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210353-KCCR');
is($rpt->{winddir}, '180', 'winddir 201211210353-KCCR');
is($rpt->{winddirtext}, 'South', 'winddirtext 201211210353-KCCR');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210353-KCCR');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210353-KCCR');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210353-KCCR');
is($rpt->{windspeedkmh}, '20', 'windspeedkmh 201211210353-KCCR');
is($rpt->{windspeedkts}, '11', 'windspeedkts 201211210353-KCCR');
is($rpt->{windspeedmph}, '13', 'windspeedmph 201211210353-KCCR');
