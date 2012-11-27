#!perl -T

use strict;
use warnings;

# Test 201211220356-KGNA
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 03:56 KGNA 220356Z AUTO 00000KT 02/01 A2978 RMK AO2 SLP093 T00170006 PWINO FZRANO TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 03:56 KGNA 220356Z AUTO 00000KT 02/01 A2978 RMK AO2 SLP093 T00170006 PWINO FZRANO TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211220356-KGNA');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211220356-KGNA');
is($rpt->{code}, 'KGNA', 'code 201211220356-KGNA');
is($rpt->{conditions1}, undef, 'conditions1 201211220356-KGNA');
is($rpt->{conditions2}, undef, 'conditions2 201211220356-KGNA');
is($rpt->{conditionstext}, undef, 'conditionstext 201211220356-KGNA');
is($rpt->{day}, '22', 'day 201211220356-KGNA');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211220356-KGNA');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211220356-KGNA');
is($rpt->{error}, undef, 'error 201211220356-KGNA');
is($rpt->{errortext}, undef, 'errortext 201211220356-KGNA');
is($rpt->{eventbe}, undef, 'eventbe 201211220356-KGNA');
is($rpt->{heat_index_c}, '56', 'heat_index_c 201211220356-KGNA');
is($rpt->{heat_index_f}, '133', 'heat_index_f 201211220356-KGNA');
is($rpt->{http}, undef, 'http 201211220356-KGNA');
is($rpt->{intensity}, undef, 'intensity 201211220356-KGNA');
is($rpt->{maintenance}, undef, 'maintenance 201211220356-KGNA');
is($rpt->{obs}, '2012/11/22 03:56 KGNA 220356Z AUTO 00000KT 02/01 A2978 RMK AO2 SLP093 T00170006 PWINO FZRANO TSNO  ', 'obs 201211220356-KGNA');
is($rpt->{precipslr}, undef, 'precipslr 201211220356-KGNA');
is($rpt->{pressure_inhg}, '29.78', 'pressure_inhg 201211220356-KGNA');
is($rpt->{pressure_kgcm}, '1.028351048', 'pressure_kgcm 201211220356-KGNA');
is($rpt->{pressure_lbin}, '14.62656612', 'pressure_lbin 201211220356-KGNA');
is($rpt->{pressure_mb}, '1008', 'pressure_mb 201211220356-KGNA');
is($rpt->{pressure_mmhg}, '756', 'pressure_mmhg 201211220356-KGNA');
is($rpt->{ptemperature}, 'T00170006', 'ptemperature 201211220356-KGNA');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211220356-KGNA');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1009.3','T00170006','PWINO','FZRANO','TSNO'], 'remark_arrayref 201211220356-KGNA');
is($rpt->{slp_inhg}, '29.80', 'slp_inhg 201211220356-KGNA');
is($rpt->{slp_kgcm}, '1.029203396', 'slp_kgcm 201211220356-KGNA');
is($rpt->{slp_lbin}, '14.63868534', 'slp_lbin 201211220356-KGNA');
is($rpt->{slp_mb}, '1009', 'slp_mb 201211220356-KGNA');
is($rpt->{slp_mmhg}, '757', 'slp_mmhg 201211220356-KGNA');
is($rpt->{station_type}, 'Automated', 'station_type 201211220356-KGNA');
is($rpt->{storm}, 'TSNO', 'storm 201211220356-KGNA');
is($rpt->{temperature_c}, '02', 'temperature_c 201211220356-KGNA');
is($rpt->{temperature_f}, '36', 'temperature_f 201211220356-KGNA');
is($rpt->{templateout}, undef, 'templateout 201211220356-KGNA');
is($rpt->{tfile}, undef, 'tfile 201211220356-KGNA');
is($rpt->{thpressure}, undef, 'thpressure 201211220356-KGNA');
is($rpt->{time}, '0356', 'time 201211220356-KGNA');
is($rpt->{visibility_km}, undef, 'visibility_km 201211220356-KGNA');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211220356-KGNA');
is($rpt->{windchill_c}, undef, 'windchill_c 201211220356-KGNA');
is($rpt->{windchill_f}, undef, 'windchill_f 201211220356-KGNA');
is($rpt->{winddir}, '0', 'winddir 201211220356-KGNA');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211220356-KGNA');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220356-KGNA');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220356-KGNA');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220356-KGNA');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211220356-KGNA');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211220356-KGNA');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211220356-KGNA');
