#!perl -T

use strict;
use warnings;

# Test 201211220351-KNYC
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:51 KNYC 220351Z AUTO 06004KT 10SM CLR 07/M01 A3025 RMK AO2 SLP236 T00721011  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:51 KNYC 220351Z AUTO 06004KT 10SM CLR 07/M01 A3025 RMK AO2 SLP236 T00721011  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211220351-KNYC');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211220351-KNYC');
is($rpt->{code}, 'KNYC', 'code 201211220351-KNYC');
is($rpt->{conditions1}, undef, 'conditions1 201211220351-KNYC');
is($rpt->{conditions2}, undef, 'conditions2 201211220351-KNYC');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211220351-KNYC');
is($rpt->{day}, '22', 'day 201211220351-KNYC');
is($rpt->{dewpoint_c}, '-1', 'dewpoint_c 201211220351-KNYC');
is($rpt->{dewpoint_f}, '30', 'dewpoint_f 201211220351-KNYC');
is($rpt->{error}, undef, 'error 201211220351-KNYC');
is($rpt->{errortext}, undef, 'errortext 201211220351-KNYC');
is($rpt->{eventbe}, undef, 'eventbe 201211220351-KNYC');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211220351-KNYC');
is($rpt->{heat_index_f}, '114', 'heat_index_f 201211220351-KNYC');
is($rpt->{http}, undef, 'http 201211220351-KNYC');
is($rpt->{intensity}, undef, 'intensity 201211220351-KNYC');
is($rpt->{maintenance}, undef, 'maintenance 201211220351-KNYC');
is($rpt->{obs}, '2012/11/22 03:51 KNYC 220351Z AUTO 06004KT 10SM CLR 07/M01 A3025 RMK AO2 SLP236 T00721011  ', 'obs 201211220351-KNYC');
is($rpt->{precipslr}, undef, 'precipslr 201211220351-KNYC');
is($rpt->{pressure_inhg}, '30.25', 'pressure_inhg 201211220351-KNYC');
is($rpt->{pressure_kgcm}, '1.0445809', 'pressure_kgcm 201211220351-KNYC');
is($rpt->{pressure_lbin}, '14.8574085', 'pressure_lbin 201211220351-KNYC');
is($rpt->{pressure_mb}, '1024', 'pressure_mb 201211220351-KNYC');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220351-KNYC');
is($rpt->{ptemperature}, 'T00721011', 'ptemperature 201211220351-KNYC');
is($rpt->{relative_humidity}, '57', 'relative_humidity 201211220351-KNYC');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1023.6','T00721011'], 'remark_arrayref 201211220351-KNYC');
is($rpt->{slp_inhg}, '30.22', 'slp_inhg 201211220351-KNYC');
is($rpt->{slp_kgcm}, '1.043785392', 'slp_kgcm 201211220351-KNYC');
is($rpt->{slp_lbin}, '14.84608968', 'slp_lbin 201211220351-KNYC');
is($rpt->{slp_mb}, '1024', 'slp_mb 201211220351-KNYC');
is($rpt->{slp_mmhg}, '768', 'slp_mmhg 201211220351-KNYC');
is($rpt->{station_type}, 'Automated', 'station_type 201211220351-KNYC');
is($rpt->{storm}, undef, 'storm 201211220351-KNYC');
is($rpt->{temperature_c}, '07', 'temperature_c 201211220351-KNYC');
is($rpt->{temperature_f}, '45', 'temperature_f 201211220351-KNYC');
is($rpt->{templateout}, undef, 'templateout 201211220351-KNYC');
is($rpt->{tfile}, undef, 'tfile 201211220351-KNYC');
is($rpt->{thpressure}, undef, 'thpressure 201211220351-KNYC');
is($rpt->{time}, '0351', 'time 201211220351-KNYC');
is($rpt->{visibility_km}, '16', 'visibility_km 201211220351-KNYC');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211220351-KNYC');
is($rpt->{windchill_c}, '5', 'windchill_c 201211220351-KNYC');
is($rpt->{windchill_f}, '42', 'windchill_f 201211220351-KNYC');
is($rpt->{winddir}, '60', 'winddir 201211220351-KNYC');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211220351-KNYC');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220351-KNYC');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220351-KNYC');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220351-KNYC');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220351-KNYC');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220351-KNYC');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220351-KNYC');
