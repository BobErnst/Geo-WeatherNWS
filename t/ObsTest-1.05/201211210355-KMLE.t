#!perl -T

use strict;
use warnings;

# Test 201211210355-KMLE
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:55 KMLE 210355Z AUTO 14003KT 10SM CLR 07/02 A3014 RMK AO2 T00660015 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:55 KMLE 210355Z AUTO 14003KT 10SM CLR 07/02 A3014 RMK AO2 T00660015 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210355-KMLE');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210355-KMLE');
is($rpt->{code}, 'KMLE', 'code 201211210355-KMLE');
is($rpt->{conditions1}, undef, 'conditions1 201211210355-KMLE');
is($rpt->{conditions2}, undef, 'conditions2 201211210355-KMLE');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211210355-KMLE');
is($rpt->{day}, '21', 'day 201211210355-KMLE');
is($rpt->{dewpoint_c}, '02', 'dewpoint_c 201211210355-KMLE');
is($rpt->{dewpoint_f}, '36', 'dewpoint_f 201211210355-KMLE');
is($rpt->{error}, undef, 'error 201211210355-KMLE');
is($rpt->{errortext}, undef, 'errortext 201211210355-KMLE');
is($rpt->{eventbe}, undef, 'eventbe 201211210355-KMLE');
is($rpt->{heat_index_c}, '45', 'heat_index_c 201211210355-KMLE');
is($rpt->{heat_index_f}, '113', 'heat_index_f 201211210355-KMLE');
is($rpt->{http}, undef, 'http 201211210355-KMLE');
is($rpt->{intensity}, undef, 'intensity 201211210355-KMLE');
is($rpt->{maintenance}, undef, 'maintenance 201211210355-KMLE');
is($rpt->{obs}, '2012/11/21 03:55 KMLE 210355Z AUTO 14003KT 10SM CLR 07/02 A3014 RMK AO2 T00660015 ', 'obs 201211210355-KMLE');
is($rpt->{precipslr}, undef, 'precipslr 201211210355-KMLE');
is($rpt->{pressure_inhg}, '30.14', 'pressure_inhg 201211210355-KMLE');
is($rpt->{pressure_kgcm}, '1.040782424', 'pressure_kgcm 201211210355-KMLE');
is($rpt->{pressure_lbin}, '14.80338156', 'pressure_lbin 201211210355-KMLE');
is($rpt->{pressure_mb}, '1021', 'pressure_mb 201211210355-KMLE');
is($rpt->{pressure_mmhg}, '766', 'pressure_mmhg 201211210355-KMLE');
is($rpt->{ptemperature}, 'T00660015', 'ptemperature 201211210355-KMLE');
is($rpt->{relative_humidity}, '70', 'relative_humidity 201211210355-KMLE');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','T00660015'], 'remark_arrayref 201211210355-KMLE');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210355-KMLE');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210355-KMLE');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210355-KMLE');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210355-KMLE');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210355-KMLE');
is($rpt->{station_type}, 'Automated', 'station_type 201211210355-KMLE');
is($rpt->{storm}, undef, 'storm 201211210355-KMLE');
is($rpt->{temperature_c}, '07', 'temperature_c 201211210355-KMLE');
is($rpt->{temperature_f}, '45', 'temperature_f 201211210355-KMLE');
is($rpt->{templateout}, undef, 'templateout 201211210355-KMLE');
is($rpt->{tfile}, undef, 'tfile 201211210355-KMLE');
is($rpt->{thpressure}, undef, 'thpressure 201211210355-KMLE');
is($rpt->{time}, '0355', 'time 201211210355-KMLE');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210355-KMLE');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210355-KMLE');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210355-KMLE');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210355-KMLE');
is($rpt->{winddir}, '140', 'winddir 201211210355-KMLE');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211210355-KMLE');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210355-KMLE');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210355-KMLE');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210355-KMLE');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211210355-KMLE');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211210355-KMLE');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211210355-KMLE');
