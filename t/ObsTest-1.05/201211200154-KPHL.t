#!perl -T

use strict;
use warnings;

# Test 201211200154-KPHL
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:54 KPHL 200154Z 04008KT 10SM OVC016 09/03 A3029 RMK AO2 SLP255 T00940033 $ 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:54 KPHL 200154Z 04008KT 10SM OVC016 09/03 A3029 RMK AO2 SLP255 T00940033 $ ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200154-KPHL');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC016'], 'cloudlevel_arrayref 201211200154-KPHL');
is($rpt->{code}, 'KPHL', 'code 201211200154-KPHL');
is($rpt->{conditions1}, undef, 'conditions1 201211200154-KPHL');
is($rpt->{conditions2}, undef, 'conditions2 201211200154-KPHL');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211200154-KPHL');
is($rpt->{day}, '20', 'day 201211200154-KPHL');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211200154-KPHL');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211200154-KPHL');
is($rpt->{error}, undef, 'error 201211200154-KPHL');
is($rpt->{errortext}, undef, 'errortext 201211200154-KPHL');
is($rpt->{eventbe}, undef, 'eventbe 201211200154-KPHL');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211200154-KPHL');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211200154-KPHL');
is($rpt->{http}, undef, 'http 201211200154-KPHL');
is($rpt->{intensity}, undef, 'intensity 201211200154-KPHL');
is($rpt->{maintenance}, '$', 'maintenance 201211200154-KPHL');
is($rpt->{obs}, '2012/11/20 01:54 KPHL 200154Z 04008KT 10SM OVC016 09/03 A3029 RMK AO2 SLP255 T00940033 $ ', 'obs 201211200154-KPHL');
is($rpt->{precipslr}, undef, 'precipslr 201211200154-KPHL');
is($rpt->{pressure_inhg}, '30.29', 'pressure_inhg 201211200154-KPHL');
is($rpt->{pressure_kgcm}, '1.045962164', 'pressure_kgcm 201211200154-KPHL');
is($rpt->{pressure_lbin}, '14.87705466', 'pressure_lbin 201211200154-KPHL');
is($rpt->{pressure_mb}, '1026', 'pressure_mb 201211200154-KPHL');
is($rpt->{pressure_mmhg}, '769', 'pressure_mmhg 201211200154-KPHL');
is($rpt->{ptemperature}, 'T00940033', 'ptemperature 201211200154-KPHL');
is($rpt->{relative_humidity}, '66', 'relative_humidity 201211200154-KPHL');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1025.5','T00940033','$'], 'remark_arrayref 201211200154-KPHL');
is($rpt->{slp_inhg}, '30.28', 'slp_inhg 201211200154-KPHL');
is($rpt->{slp_kgcm}, '1.04572286', 'slp_kgcm 201211200154-KPHL');
is($rpt->{slp_lbin}, '14.8736469', 'slp_lbin 201211200154-KPHL');
is($rpt->{slp_mb}, '1026', 'slp_mb 201211200154-KPHL');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211200154-KPHL');
is($rpt->{station_type}, 'Automated', 'station_type 201211200154-KPHL');
is($rpt->{storm}, undef, 'storm 201211200154-KPHL');
is($rpt->{temperature_c}, '09', 'temperature_c 201211200154-KPHL');
is($rpt->{temperature_f}, '48', 'temperature_f 201211200154-KPHL');
is($rpt->{templateout}, undef, 'templateout 201211200154-KPHL');
is($rpt->{tfile}, undef, 'tfile 201211200154-KPHL');
is($rpt->{thpressure}, undef, 'thpressure 201211200154-KPHL');
is($rpt->{time}, '0154', 'time 201211200154-KPHL');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200154-KPHL');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200154-KPHL');
is($rpt->{windchill_c}, '7', 'windchill_c 201211200154-KPHL');
is($rpt->{windchill_f}, '44', 'windchill_f 201211200154-KPHL');
is($rpt->{winddir}, '40', 'winddir 201211200154-KPHL');
is($rpt->{winddirtext}, 'Northeast', 'winddirtext 201211200154-KPHL');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200154-KPHL');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200154-KPHL');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200154-KPHL');
is($rpt->{windspeedkmh}, '15', 'windspeedkmh 201211200154-KPHL');
is($rpt->{windspeedkts}, '8', 'windspeedkts 201211200154-KPHL');
is($rpt->{windspeedmph}, '9', 'windspeedmph 201211200154-KPHL');
