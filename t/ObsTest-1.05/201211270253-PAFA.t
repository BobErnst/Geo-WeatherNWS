#!perl -T

use strict;
use warnings;

# Test 201211270253-PAFA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/27 02:53 PAFA 270253Z 00000KT 10SM CLR M27/M30 A3028 RMK AO2 SLP272 T12721300 56006

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/27 02:53 PAFA 270253Z 00000KT 10SM CLR M27/M30 A3028 RMK AO2 SLP272 T12721300 56006';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211270253-PAFA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211270253-PAFA');
is($rpt->{code}, 'PAFA', 'code 201211270253-PAFA');
is($rpt->{conditions1}, undef, 'conditions1 201211270253-PAFA');
is($rpt->{conditions2}, undef, 'conditions2 201211270253-PAFA');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211270253-PAFA');
is($rpt->{day}, '27', 'day 201211270253-PAFA');
is($rpt->{dewpoint_c}, '-30', 'dewpoint_c 201211270253-PAFA');
is($rpt->{dewpoint_f}, '-22', 'dewpoint_f 201211270253-PAFA');
is($rpt->{error}, undef, 'error 201211270253-PAFA');
is($rpt->{errortext}, undef, 'errortext 201211270253-PAFA');
is($rpt->{eventbe}, undef, 'eventbe 201211270253-PAFA');
is($rpt->{heat_index_c}, '314', 'heat_index_c 201211270253-PAFA');
is($rpt->{heat_index_f}, '597', 'heat_index_f 201211270253-PAFA');
is($rpt->{http}, undef, 'http 201211270253-PAFA');
is($rpt->{intensity}, undef, 'intensity 201211270253-PAFA');
is($rpt->{maintenance}, undef, 'maintenance 201211270253-PAFA');
is($rpt->{obs}, '2012/11/27 02:53 PAFA 270253Z 00000KT 10SM CLR M27/M30 A3028 RMK AO2 SLP272 T12721300 56006', 'obs 201211270253-PAFA');
is($rpt->{precipslr}, undef, 'precipslr 201211270253-PAFA');
is($rpt->{pressure_inhg}, '30.28', 'pressure_inhg 201211270253-PAFA');
is($rpt->{pressure_kgcm}, '1.045616848', 'pressure_kgcm 201211270253-PAFA');
is($rpt->{pressure_lbin}, '14.87214312', 'pressure_lbin 201211270253-PAFA');
is($rpt->{pressure_mb}, '1025', 'pressure_mb 201211270253-PAFA');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211270253-PAFA');
is($rpt->{ptemperature}, 'T12721300', 'ptemperature 201211270253-PAFA');
is($rpt->{relative_humidity}, '75', 'relative_humidity 201211270253-PAFA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1027.2','T12721300','56006'], 'remark_arrayref 201211270253-PAFA');
is($rpt->{slp_inhg}, '30.33', 'slp_inhg 201211270253-PAFA');
is($rpt->{slp_kgcm}, '1.047456384', 'slp_kgcm 201211270253-PAFA');
is($rpt->{slp_lbin}, '14.89830336', 'slp_lbin 201211270253-PAFA');
is($rpt->{slp_mb}, '1027', 'slp_mb 201211270253-PAFA');
is($rpt->{slp_mmhg}, '770', 'slp_mmhg 201211270253-PAFA');
is($rpt->{station_type}, 'Automated', 'station_type 201211270253-PAFA');
is($rpt->{storm}, undef, 'storm 201211270253-PAFA');
is($rpt->{temperature_c}, '-27', 'temperature_c 201211270253-PAFA');
is($rpt->{temperature_f}, '-17', 'temperature_f 201211270253-PAFA');
is($rpt->{templateout}, undef, 'templateout 201211270253-PAFA');
is($rpt->{tfile}, undef, 'tfile 201211270253-PAFA');
is($rpt->{thpressure}, '56006', 'thpressure 201211270253-PAFA');
is($rpt->{time}, '0253', 'time 201211270253-PAFA');
is($rpt->{visibility_km}, '16', 'visibility_km 201211270253-PAFA');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211270253-PAFA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211270253-PAFA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211270253-PAFA');
is($rpt->{winddir}, '0', 'winddir 201211270253-PAFA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211270253-PAFA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211270253-PAFA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211270253-PAFA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211270253-PAFA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211270253-PAFA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211270253-PAFA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211270253-PAFA');
