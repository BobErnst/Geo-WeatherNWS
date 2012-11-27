#!perl -T

use strict;
use warnings;

# Test 201211210318-KMAI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:18 KMAI 210318Z AUTO 00000KT 1 1/2SM BR CLR 13/13 A3011 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:18 KMAI 210318Z AUTO 00000KT 1 1/2SM BR CLR 13/13 A3011 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211210318-KMAI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211210318-KMAI');
is($rpt->{code}, 'KMAI', 'code 201211210318-KMAI');
is($rpt->{conditions1}, 'Mist', 'conditions1 201211210318-KMAI');
is($rpt->{conditions2}, undef, 'conditions2 201211210318-KMAI');
is($rpt->{conditionstext}, 'Mist', 'conditionstext 201211210318-KMAI');
is($rpt->{day}, '21', 'day 201211210318-KMAI');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211210318-KMAI');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211210318-KMAI');
is($rpt->{error}, undef, 'error 201211210318-KMAI');
is($rpt->{errortext}, undef, 'errortext 201211210318-KMAI');
is($rpt->{eventbe}, undef, 'eventbe 201211210318-KMAI');
is($rpt->{heat_index_c}, '15', 'heat_index_c 201211210318-KMAI');
is($rpt->{heat_index_f}, '60', 'heat_index_f 201211210318-KMAI');
is($rpt->{http}, undef, 'http 201211210318-KMAI');
is($rpt->{intensity}, undef, 'intensity 201211210318-KMAI');
is($rpt->{maintenance}, undef, 'maintenance 201211210318-KMAI');
is($rpt->{obs}, '2012/11/21 03:18 KMAI 210318Z AUTO 00000KT 1 1/2SM BR CLR 13/13 A3011 RMK AO2 ', 'obs 201211210318-KMAI');
is($rpt->{precipslr}, undef, 'precipslr 201211210318-KMAI');
is($rpt->{pressure_inhg}, '30.11', 'pressure_inhg 201211210318-KMAI');
is($rpt->{pressure_kgcm}, '1.039746476', 'pressure_kgcm 201211210318-KMAI');
is($rpt->{pressure_lbin}, '14.78864694', 'pressure_lbin 201211210318-KMAI');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210318-KMAI');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210318-KMAI');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210318-KMAI');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210318-KMAI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211210318-KMAI');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210318-KMAI');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210318-KMAI');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210318-KMAI');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210318-KMAI');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210318-KMAI');
is($rpt->{station_type}, 'Automated', 'station_type 201211210318-KMAI');
is($rpt->{storm}, undef, 'storm 201211210318-KMAI');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210318-KMAI');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210318-KMAI');
is($rpt->{templateout}, undef, 'templateout 201211210318-KMAI');
is($rpt->{tfile}, undef, 'tfile 201211210318-KMAI');
is($rpt->{thpressure}, undef, 'thpressure 201211210318-KMAI');
is($rpt->{time}, '0318', 'time 201211210318-KMAI');
is($rpt->{visibility_km}, '1', 'visibility_km 201211210318-KMAI');
is($rpt->{visibility_mi}, '0', 'visibility_mi 201211210318-KMAI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210318-KMAI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210318-KMAI');
is($rpt->{winddir}, '0', 'winddir 201211210318-KMAI');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210318-KMAI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210318-KMAI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210318-KMAI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210318-KMAI');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210318-KMAI');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210318-KMAI');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210318-KMAI');
