#!perl -T

use strict;
use warnings;

# Test 201211210351-KHTS
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 03:51 KHTS 210351Z AUTO 00000KT 10SM OVC070 09/01 A3013 RMK AO2 SLP203 T00940011 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 03:51 KHTS 210351Z AUTO 00000KT 10SM OVC070 09/01 A3013 RMK AO2 SLP203 T00940011 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211210351-KHTS');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['OVC070'], 'cloudlevel_arrayref 201211210351-KHTS');
is($rpt->{code}, 'KHTS', 'code 201211210351-KHTS');
is($rpt->{conditions1}, undef, 'conditions1 201211210351-KHTS');
is($rpt->{conditions2}, undef, 'conditions2 201211210351-KHTS');
is($rpt->{conditionstext}, 'Cloudy', 'conditionstext 201211210351-KHTS');
is($rpt->{day}, '21', 'day 201211210351-KHTS');
is($rpt->{dewpoint_c}, '01', 'dewpoint_c 201211210351-KHTS');
is($rpt->{dewpoint_f}, '34', 'dewpoint_f 201211210351-KHTS');
is($rpt->{error}, undef, 'error 201211210351-KHTS');
is($rpt->{errortext}, undef, 'errortext 201211210351-KHTS');
is($rpt->{eventbe}, undef, 'eventbe 201211210351-KHTS');
is($rpt->{heat_index_c}, '40', 'heat_index_c 201211210351-KHTS');
is($rpt->{heat_index_f}, '104', 'heat_index_f 201211210351-KHTS');
is($rpt->{http}, undef, 'http 201211210351-KHTS');
is($rpt->{intensity}, undef, 'intensity 201211210351-KHTS');
is($rpt->{maintenance}, undef, 'maintenance 201211210351-KHTS');
is($rpt->{obs}, '2012/11/21 03:51 KHTS 210351Z AUTO 00000KT 10SM OVC070 09/01 A3013 RMK AO2 SLP203 T00940011 TSNO ', 'obs 201211210351-KHTS');
is($rpt->{precipslr}, undef, 'precipslr 201211210351-KHTS');
is($rpt->{pressure_inhg}, '30.13', 'pressure_inhg 201211210351-KHTS');
is($rpt->{pressure_kgcm}, '1.040437108', 'pressure_kgcm 201211210351-KHTS');
is($rpt->{pressure_lbin}, '14.79847002', 'pressure_lbin 201211210351-KHTS');
is($rpt->{pressure_mb}, '1020', 'pressure_mb 201211210351-KHTS');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210351-KHTS');
is($rpt->{ptemperature}, 'T00940011', 'ptemperature 201211210351-KHTS');
is($rpt->{relative_humidity}, '57', 'relative_humidity 201211210351-KHTS');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1020.3','T00940011','TSNO'], 'remark_arrayref 201211210351-KHTS');
is($rpt->{slp_inhg}, '30.12', 'slp_inhg 201211210351-KHTS');
is($rpt->{slp_kgcm}, '1.040420316', 'slp_kgcm 201211210351-KHTS');
is($rpt->{slp_lbin}, '14.79822714', 'slp_lbin 201211210351-KHTS');
is($rpt->{slp_mb}, '1020', 'slp_mb 201211210351-KHTS');
is($rpt->{slp_mmhg}, '765', 'slp_mmhg 201211210351-KHTS');
is($rpt->{station_type}, 'Automated', 'station_type 201211210351-KHTS');
is($rpt->{storm}, 'TSNO', 'storm 201211210351-KHTS');
is($rpt->{temperature_c}, '09', 'temperature_c 201211210351-KHTS');
is($rpt->{temperature_f}, '48', 'temperature_f 201211210351-KHTS');
is($rpt->{templateout}, undef, 'templateout 201211210351-KHTS');
is($rpt->{tfile}, undef, 'tfile 201211210351-KHTS');
is($rpt->{thpressure}, undef, 'thpressure 201211210351-KHTS');
is($rpt->{time}, '0351', 'time 201211210351-KHTS');
is($rpt->{visibility_km}, '16', 'visibility_km 201211210351-KHTS');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211210351-KHTS');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210351-KHTS');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210351-KHTS');
is($rpt->{winddir}, '0', 'winddir 201211210351-KHTS');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210351-KHTS');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210351-KHTS');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210351-KHTS');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210351-KHTS');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210351-KHTS');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210351-KHTS');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210351-KHTS');
