#!perl -T

use strict;
use warnings;

# Test 201211200155-KRNH
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:55 KRNH 200155Z AUTO 00000KT 10SM CLR 05/03 A3006 RMK AO2 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:55 KRNH 200155Z AUTO 00000KT 10SM CLR 05/03 A3006 RMK AO2 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200155-KRNH');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200155-KRNH');
is($rpt->{code}, 'KRNH', 'code 201211200155-KRNH');
is($rpt->{conditions1}, undef, 'conditions1 201211200155-KRNH');
is($rpt->{conditions2}, undef, 'conditions2 201211200155-KRNH');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200155-KRNH');
is($rpt->{day}, '20', 'day 201211200155-KRNH');
is($rpt->{dewpoint_c}, '03', 'dewpoint_c 201211200155-KRNH');
is($rpt->{dewpoint_f}, '37', 'dewpoint_f 201211200155-KRNH');
is($rpt->{error}, undef, 'error 201211200155-KRNH');
is($rpt->{errortext}, undef, 'errortext 201211200155-KRNH');
is($rpt->{eventbe}, undef, 'eventbe 201211200155-KRNH');
is($rpt->{heat_index_c}, '46', 'heat_index_c 201211200155-KRNH');
is($rpt->{heat_index_f}, '115', 'heat_index_f 201211200155-KRNH');
is($rpt->{http}, undef, 'http 201211200155-KRNH');
is($rpt->{intensity}, undef, 'intensity 201211200155-KRNH');
is($rpt->{maintenance}, undef, 'maintenance 201211200155-KRNH');
is($rpt->{obs}, '2012/11/20 01:55 KRNH 200155Z AUTO 00000KT 10SM CLR 05/03 A3006 RMK AO2 ', 'obs 201211200155-KRNH');
is($rpt->{precipslr}, undef, 'precipslr 201211200155-KRNH');
is($rpt->{pressure_inhg}, '30.06', 'pressure_inhg 201211200155-KRNH');
is($rpt->{pressure_kgcm}, '1.038019896', 'pressure_kgcm 201211200155-KRNH');
is($rpt->{pressure_lbin}, '14.76408924', 'pressure_lbin 201211200155-KRNH');
is($rpt->{pressure_mb}, '1018', 'pressure_mb 201211200155-KRNH');
is($rpt->{pressure_mmhg}, '764', 'pressure_mmhg 201211200155-KRNH');
is($rpt->{ptemperature}, undef, 'ptemperature 201211200155-KRNH');
is($rpt->{relative_humidity}, '87', 'relative_humidity 201211200155-KRNH');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2'], 'remark_arrayref 201211200155-KRNH');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211200155-KRNH');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211200155-KRNH');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211200155-KRNH');
is($rpt->{slp_mb}, undef, 'slp_mb 201211200155-KRNH');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211200155-KRNH');
is($rpt->{station_type}, 'Automated', 'station_type 201211200155-KRNH');
is($rpt->{storm}, undef, 'storm 201211200155-KRNH');
is($rpt->{temperature_c}, '05', 'temperature_c 201211200155-KRNH');
is($rpt->{temperature_f}, '41', 'temperature_f 201211200155-KRNH');
is($rpt->{templateout}, undef, 'templateout 201211200155-KRNH');
is($rpt->{tfile}, undef, 'tfile 201211200155-KRNH');
is($rpt->{thpressure}, undef, 'thpressure 201211200155-KRNH');
is($rpt->{time}, '0155', 'time 201211200155-KRNH');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200155-KRNH');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200155-KRNH');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200155-KRNH');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200155-KRNH');
is($rpt->{winddir}, '0', 'winddir 201211200155-KRNH');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211200155-KRNH');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200155-KRNH');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200155-KRNH');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200155-KRNH');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211200155-KRNH');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211200155-KRNH');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211200155-KRNH');
