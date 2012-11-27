#!perl -T

use strict;
use warnings;

# Test 201211250250-EBBR
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/25 02:50 EBBR 250250Z 21022G37KT 9999 -RA SCT028 BKN035 13/08 Q1002 NOSIG 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/25 02:50 EBBR 250250Z 21022G37KT 9999 -RA SCT028 BKN035 13/08 Q1002 NOSIG ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Mostly Cloudy', 'cloudcover 201211250250-EBBR');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['SCT028','BKN035'], 'cloudlevel_arrayref 201211250250-EBBR');
is($rpt->{code}, 'EBBR', 'code 201211250250-EBBR');
is($rpt->{conditions1}, 'Rain', 'conditions1 201211250250-EBBR');
is($rpt->{conditions2}, undef, 'conditions2 201211250250-EBBR');
is($rpt->{conditionstext}, 'Light Rain', 'conditionstext 201211250250-EBBR');
is($rpt->{day}, '25', 'day 201211250250-EBBR');
is($rpt->{dewpoint_c}, '08', 'dewpoint_c 201211250250-EBBR');
is($rpt->{dewpoint_f}, '46', 'dewpoint_f 201211250250-EBBR');
is($rpt->{error}, undef, 'error 201211250250-EBBR');
is($rpt->{errortext}, undef, 'errortext 201211250250-EBBR');
is($rpt->{eventbe}, undef, 'eventbe 201211250250-EBBR');
is($rpt->{heat_index_c}, '29', 'heat_index_c 201211250250-EBBR');
is($rpt->{heat_index_f}, '85', 'heat_index_f 201211250250-EBBR');
is($rpt->{http}, undef, 'http 201211250250-EBBR');
is($rpt->{intensity}, 'Light', 'intensity 201211250250-EBBR');
is($rpt->{maintenance}, undef, 'maintenance 201211250250-EBBR');
is($rpt->{obs}, '2012/11/25 02:50 EBBR 250250Z 21022G37KT 9999 -RA SCT028 BKN035 13/08 Q1002 NOSIG ', 'obs 201211250250-EBBR');
is($rpt->{precipslr}, undef, 'precipslr 201211250250-EBBR');
is($rpt->{pressure_inhg}, '29.59', 'pressure_inhg 201211250250-EBBR');
is($rpt->{pressure_kgcm}, '1.021790044', 'pressure_kgcm 201211250250-EBBR');
is($rpt->{pressure_lbin}, '14.53324686', 'pressure_lbin 201211250250-EBBR');
is($rpt->{pressure_mb}, '1002', 'pressure_mb 201211250250-EBBR');
is($rpt->{pressure_mmhg}, '752', 'pressure_mmhg 201211250250-EBBR');
is($rpt->{ptemperature}, undef, 'ptemperature 201211250250-EBBR');
is($rpt->{relative_humidity}, '72', 'relative_humidity 201211250250-EBBR');
is_deeply(\$rpt->{remark_arrayref}, \[], 'remark_arrayref 201211250250-EBBR');
is($rpt->{slp_inhg}, undef, 'slp_inhg 201211250250-EBBR');
is($rpt->{slp_kgcm}, undef, 'slp_kgcm 201211250250-EBBR');
is($rpt->{slp_lbin}, undef, 'slp_lbin 201211250250-EBBR');
is($rpt->{slp_mb}, undef, 'slp_mb 201211250250-EBBR');
is($rpt->{slp_mmhg}, undef, 'slp_mmhg 201211250250-EBBR');
is($rpt->{station_type}, 'Manual', 'station_type 201211250250-EBBR');
is($rpt->{storm}, undef, 'storm 201211250250-EBBR');
is($rpt->{temperature_c}, '13', 'temperature_c 201211250250-EBBR');
is($rpt->{temperature_f}, '55', 'temperature_f 201211250250-EBBR');
is($rpt->{templateout}, undef, 'templateout 201211250250-EBBR');
is($rpt->{tfile}, undef, 'tfile 201211250250-EBBR');
is($rpt->{thpressure}, undef, 'thpressure 201211250250-EBBR');
is($rpt->{time}, '0250', 'time 201211250250-EBBR');
is($rpt->{visibility_km}, undef, 'visibility_km 201211250250-EBBR');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211250250-EBBR');
is($rpt->{windchill_c}, undef, 'windchill_c 201211250250-EBBR');
is($rpt->{windchill_f}, undef, 'windchill_f 201211250250-EBBR');
is($rpt->{winddir}, '210', 'winddir 201211250250-EBBR');
is($rpt->{winddirtext}, 'Southwest', 'winddirtext 201211250250-EBBR');
is($rpt->{windgustkmh}, '69', 'windgustkmh 201211250250-EBBR');
is($rpt->{windgustkts}, '37', 'windgustkts 201211250250-EBBR');
is($rpt->{windgustmph}, '43', 'windgustmph 201211250250-EBBR');
is($rpt->{windspeedkmh}, '41', 'windspeedkmh 201211250250-EBBR');
is($rpt->{windspeedkts}, '22', 'windspeedkts 201211250250-EBBR');
is($rpt->{windspeedmph}, '25', 'windspeedmph 201211250250-EBBR');
