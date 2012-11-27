#!perl -T

use strict;
use warnings;

# Test 201211230353-KTCC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/23 03:53 KTCC 230353Z AUTO 07016KT 10SM CLR 11/M03 A3031 RMK AO2 PK WND 07026/0303 SLP234 T01111028 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/23 03:53 KTCC 230353Z AUTO 07016KT 10SM CLR 11/M03 A3031 RMK AO2 PK WND 07026/0303 SLP234 T01111028 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211230353-KTCC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211230353-KTCC');
is($rpt->{code}, 'KTCC', 'code 201211230353-KTCC');
is($rpt->{conditions1}, undef, 'conditions1 201211230353-KTCC');
is($rpt->{conditions2}, undef, 'conditions2 201211230353-KTCC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211230353-KTCC');
is($rpt->{day}, '23', 'day 201211230353-KTCC');
is($rpt->{dewpoint_c}, '-3', 'dewpoint_c 201211230353-KTCC');
is($rpt->{dewpoint_f}, '27', 'dewpoint_f 201211230353-KTCC');
is($rpt->{error}, undef, 'error 201211230353-KTCC');
is($rpt->{errortext}, undef, 'errortext 201211230353-KTCC');
is($rpt->{eventbe}, undef, 'eventbe 201211230353-KTCC');
is($rpt->{heat_index_c}, '32', 'heat_index_c 201211230353-KTCC');
is($rpt->{heat_index_f}, '90', 'heat_index_f 201211230353-KTCC');
is($rpt->{http}, undef, 'http 201211230353-KTCC');
is($rpt->{intensity}, undef, 'intensity 201211230353-KTCC');
is($rpt->{maintenance}, undef, 'maintenance 201211230353-KTCC');
is($rpt->{obs}, '2012/11/23 03:53 KTCC 230353Z AUTO 07016KT 10SM CLR 11/M03 A3031 RMK AO2 PK WND 07026/0303 SLP234 T01111028 ', 'obs 201211230353-KTCC');
is($rpt->{precipslr}, undef, 'precipslr 201211230353-KTCC');
is($rpt->{pressure_inhg}, '30.31', 'pressure_inhg 201211230353-KTCC');
is($rpt->{pressure_kgcm}, '1.046652796', 'pressure_kgcm 201211230353-KTCC');
is($rpt->{pressure_lbin}, '14.88687774', 'pressure_lbin 201211230353-KTCC');
is($rpt->{pressure_mb}, '1026', 'pressure_mb 201211230353-KTCC');
is($rpt->{pressure_mmhg}, '770', 'pressure_mmhg 201211230353-KTCC');
is($rpt->{ptemperature}, 'T01111028', 'ptemperature 201211230353-KTCC');
is($rpt->{relative_humidity}, '37', 'relative_humidity 201211230353-KTCC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','PK','WND','07026/0303','1023.4','T01111028'], 'remark_arrayref 201211230353-KTCC');
is($rpt->{slp_inhg}, '30.22', 'slp_inhg 201211230353-KTCC');
is($rpt->{slp_kgcm}, '1.043581448', 'slp_kgcm 201211230353-KTCC');
is($rpt->{slp_lbin}, '14.84318892', 'slp_lbin 201211230353-KTCC');
is($rpt->{slp_mb}, '1023', 'slp_mb 201211230353-KTCC');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211230353-KTCC');
is($rpt->{station_type}, 'Automated', 'station_type 201211230353-KTCC');
is($rpt->{storm}, undef, 'storm 201211230353-KTCC');
is($rpt->{temperature_c}, '11', 'temperature_c 201211230353-KTCC');
is($rpt->{temperature_f}, '52', 'temperature_f 201211230353-KTCC');
is($rpt->{templateout}, undef, 'templateout 201211230353-KTCC');
is($rpt->{tfile}, undef, 'tfile 201211230353-KTCC');
is($rpt->{thpressure}, undef, 'thpressure 201211230353-KTCC');
is($rpt->{time}, '0353', 'time 201211230353-KTCC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211230353-KTCC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211230353-KTCC');
is($rpt->{windchill_c}, undef, 'windchill_c 201211230353-KTCC');
is($rpt->{windchill_f}, undef, 'windchill_f 201211230353-KTCC');
is($rpt->{winddir}, '70', 'winddir 201211230353-KTCC');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211230353-KTCC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211230353-KTCC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211230353-KTCC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211230353-KTCC');
is($rpt->{windspeedkmh}, '30', 'windspeedkmh 201211230353-KTCC');
is($rpt->{windspeedkts}, '16', 'windspeedkts 201211230353-KTCC');
is($rpt->{windspeedmph}, '18', 'windspeedmph 201211230353-KTCC');
