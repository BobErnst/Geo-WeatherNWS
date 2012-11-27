#!perl -T

use strict;
use warnings;

# Test 201211210315-KGYL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:15 KGYL 210315Z AUTO 00000KT 10SM CLR 05/00 A3004 RMK AO2 T00500000 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:15 KGYL 210315Z AUTO 00000KT 10SM CLR 05/00 A3004 RMK AO2 T00500000 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210315-KGYL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210315-KGYL');
is($rpt->{code}, 'KGYL', 'code 201211210315-KGYL');
is($rpt->{conditions1}, undef, 'conditions1 201211210315-KGYL');
is($rpt->{conditions2}, undef, 'conditions2 201211210315-KGYL');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210315-KGYL');
is($rpt->{day}, '21', 'day 201211210315-KGYL');
is($rpt->{dewpoint_c}, '00', 'dewpoint_c 201211210315-KGYL');
is($rpt->{dewpoint_f}, '32', 'dewpoint_f 201211210315-KGYL');
is($rpt->{error}, undef, 'error 201211210315-KGYL');
is($rpt->{errortext}, undef, 'errortext 201211210315-KGYL');
is($rpt->{eventbe}, undef, 'eventbe 201211210315-KGYL');
is($rpt->{heat_index_c}, '52', 'heat_index_c 201211210315-KGYL');
is($rpt->{heat_index_f}, '126', 'heat_index_f 201211210315-KGYL');
is($rpt->{http}, undef, 'http 201211210315-KGYL');
is($rpt->{intensity}, undef, 'intensity 201211210315-KGYL');
is($rpt->{maintenance}, undef, 'maintenance 201211210315-KGYL');
is($rpt->{obs}, '2012/11/21 03:15 KGYL 210315Z AUTO 00000KT 10SM CLR 05/00 A3004 RMK AO2 T00500000 ', 'obs 201211210315-KGYL');
is($rpt->{precipslr}, undef, 'precipslr 201211210315-KGYL');
is($rpt->{pressure_inhg}, '30.04', 'pressure_inhg 201211210315-KGYL');
is($rpt->{pressure_kgcm}, '1.037329264', 'pressure_kgcm 201211210315-KGYL');
is($rpt->{pressure_lbin}, '14.75426616', 'pressure_lbin 201211210315-KGYL');
is($rpt->{pressure_mb}, '1017', 'pressure_mb 201211210315-KGYL');
is($rpt->{pressure_mmhg}, '763', 'pressure_mmhg 201211210315-KGYL');
is($rpt->{ptemperature}, 'T00500000', 'ptemperature 201211210315-KGYL');
is($rpt->{relative_humidity}, '70', 'relative_humidity 201211210315-KGYL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00500000'], 'remark_arrayref 201211210315-KGYL');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210315-KGYL');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210315-KGYL');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210315-KGYL');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210315-KGYL');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210315-KGYL');
is($rpt->{station_type}, 'Automated', 'station_type 201211210315-KGYL');
is($rpt->{storm}, undef, 'storm 201211210315-KGYL');
is($rpt->{temperature_c}, '05', 'temperature_c 201211210315-KGYL');
is($rpt->{temperature_f}, '41', 'temperature_f 201211210315-KGYL');
is($rpt->{templateout}, undef, 'templateout 201211210315-KGYL');
is($rpt->{tfile}, undef, 'tfile 201211210315-KGYL');
is($rpt->{thpressure}, undef, 'thpressure 201211210315-KGYL');
is($rpt->{time}, '0315', 'time 201211210315-KGYL');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210315-KGYL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210315-KGYL');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210315-KGYL');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210315-KGYL');
is($rpt->{winddir}, '0', 'winddir 201211210315-KGYL');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210315-KGYL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210315-KGYL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210315-KGYL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210315-KGYL');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210315-KGYL');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210315-KGYL');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210315-KGYL');
