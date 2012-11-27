#!perl -T

use strict;
use warnings;

# Test 201211210245-KMER
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/21 02:45 KMER 210245Z 00000KT 7SM BKN200 13/13 A3010 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/21 02:45 KMER 210245Z 00000KT 7SM BKN200 13/13 A3010 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211210245-KMER');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN200'], 'cloudlevel_arrayref 201211210245-KMER');
is($rpt->{code}, 'KMER', 'code 201211210245-KMER');
is($rpt->{conditions1}, undef, 'conditions1 201211210245-KMER');
is($rpt->{conditions2}, undef, 'conditions2 201211210245-KMER');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211210245-KMER');
is($rpt->{day}, '21', 'day 201211210245-KMER');
is($rpt->{dewpoint_c}, '13', 'dewpoint_c 201211210245-KMER');
is($rpt->{dewpoint_f}, '55', 'dewpoint_f 201211210245-KMER');
is($rpt->{error}, undef, 'error 201211210245-KMER');
is($rpt->{errortext}, undef, 'errortext 201211210245-KMER');
is($rpt->{eventbe}, undef, 'eventbe 201211210245-KMER');
is($rpt->{heat_index_c}, '15', 'heat_index_c 201211210245-KMER');
is($rpt->{heat_index_f}, '60', 'heat_index_f 201211210245-KMER');
is($rpt->{http}, undef, 'http 201211210245-KMER');
is($rpt->{intensity}, undef, 'intensity 201211210245-KMER');
is($rpt->{maintenance}, undef, 'maintenance 201211210245-KMER');
is($rpt->{obs}, '2012/11/21 02:45 KMER 210245Z 00000KT 7SM BKN200 13/13 A3010 ', 'obs 201211210245-KMER');
is($rpt->{precipslr}, undef, 'precipslr 201211210245-KMER');
is($rpt->{pressure_inhg}, '30.10', 'pressure_inhg 201211210245-KMER');
is($rpt->{pressure_kgcm}, '1.03940116', 'pressure_kgcm 201211210245-KMER');
is($rpt->{pressure_lbin}, '14.7837354', 'pressure_lbin 201211210245-KMER');
is($rpt->{pressure_mb}, '1019', 'pressure_mb 201211210245-KMER');
is($rpt->{pressure_mmhg}, '765', 'pressure_mmhg 201211210245-KMER');
is($rpt->{ptemperature}, undef, 'ptemperature 201211210245-KMER');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211210245-KMER');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211210245-KMER');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211210245-KMER');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211210245-KMER');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211210245-KMER');
is($rpt->{slp_mb}, undef, 'slp_mb 201211210245-KMER');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211210245-KMER');
is($rpt->{station_type}, 'Manual', 'station_type 201211210245-KMER');
is($rpt->{storm}, undef, 'storm 201211210245-KMER');
is($rpt->{temperature_c}, '13', 'temperature_c 201211210245-KMER');
is($rpt->{temperature_f}, '55', 'temperature_f 201211210245-KMER');
is($rpt->{templateout}, undef, 'templateout 201211210245-KMER');
is($rpt->{tfile}, undef, 'tfile 201211210245-KMER');
is($rpt->{thpressure}, undef, 'thpressure 201211210245-KMER');
is($rpt->{time}, '0245', 'time 201211210245-KMER');
is($rpt->{visibility_km}, '11', 'visibility_km 201211210245-KMER');
is($rpt->{visibility_mi}, '7', 'visibility_mi 201211210245-KMER');
is($rpt->{windchill_c}, undef, 'windchill_c 201211210245-KMER');
is($rpt->{windchill_f}, undef, 'windchill_f 201211210245-KMER');
is($rpt->{winddir}, '0', 'winddir 201211210245-KMER');
is($rpt->{winddirtext}, 'Calm', 'winddirtext 201211210245-KMER');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211210245-KMER');
is($rpt->{windgustkts}, '0', 'windgustkts 201211210245-KMER');
is($rpt->{windgustmph}, '0', 'windgustmph 201211210245-KMER');
is($rpt->{windspeedkmh}, '0', 'windspeedkmh 201211210245-KMER');
is($rpt->{windspeedkts}, '0', 'windspeedkts 201211210245-KMER');
is($rpt->{windspeedmph}, '0', 'windspeedmph 201211210245-KMER');
