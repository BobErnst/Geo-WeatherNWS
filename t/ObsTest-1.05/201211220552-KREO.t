#!perl -T

use strict;
use warnings;

# Test 201211220552-KREO
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/22 05:52 KREO 220552Z AUTO 13004KT M03/M04 A3022 RMK AO2 SLP248 T10331044 10028 21033 53022 PWINO FZRANO TSNO  

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/22 05:52 KREO 220552Z AUTO 13004KT M03/M04 A3022 RMK AO2 SLP248 T10331044 10028 21033 53022 PWINO FZRANO TSNO  ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, undef, 'cloudcover 201211220552-KREO');
is_deeply(\$rpt->{cloudlevel_arrayref}, \[], 'cloudlevel_arrayref 201211220552-KREO');
is($rpt->{code}, 'KREO', 'code 201211220552-KREO');
is($rpt->{conditions1}, undef, 'conditions1 201211220552-KREO');
is($rpt->{conditions2}, undef, 'conditions2 201211220552-KREO');
is($rpt->{conditionstext}, undef, 'conditionstext 201211220552-KREO');
is($rpt->{day}, '22', 'day 201211220552-KREO');
is($rpt->{dewpoint_c}, '-4', 'dewpoint_c 201211220552-KREO');
is($rpt->{dewpoint_f}, '25', 'dewpoint_f 201211220552-KREO');
is($rpt->{error}, undef, 'error 201211220552-KREO');
is($rpt->{errortext}, undef, 'errortext 201211220552-KREO');
is($rpt->{eventbe}, undef, 'eventbe 201211220552-KREO');
is($rpt->{heat_index_c}, '85', 'heat_index_c 201211220552-KREO');
is($rpt->{heat_index_f}, '185', 'heat_index_f 201211220552-KREO');
is($rpt->{http}, undef, 'http 201211220552-KREO');
is($rpt->{intensity}, undef, 'intensity 201211220552-KREO');
is($rpt->{maintenance}, undef, 'maintenance 201211220552-KREO');
is($rpt->{obs}, '2012/11/22 05:52 KREO 220552Z AUTO 13004KT M03/M04 A3022 RMK AO2 SLP248 T10331044 10028 21033 53022 PWINO FZRANO TSNO  ', 'obs 201211220552-KREO');
is($rpt->{precipslr}, undef, 'precipslr 201211220552-KREO');
is($rpt->{pressure_inhg}, '30.22', 'pressure_inhg 201211220552-KREO');
is($rpt->{pressure_kgcm}, '1.043544952', 'pressure_kgcm 201211220552-KREO');
is($rpt->{pressure_lbin}, '14.84267388', 'pressure_lbin 201211220552-KREO');
is($rpt->{pressure_mb}, '1023', 'pressure_mb 201211220552-KREO');
is($rpt->{pressure_mmhg}, '768', 'pressure_mmhg 201211220552-KREO');
is($rpt->{ptemperature}, 'T10331044', 'ptemperature 201211220552-KREO');
is($rpt->{relative_humidity}, '93', 'relative_humidity 201211220552-KREO');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1024.8','T10331044','10028','21033','53022','PWINO','FZRANO','TSNO'], 'remark_arrayref 201211220552-KREO');
is($rpt->{slp_inhg}, '30.26', 'slp_inhg 201211220552-KREO');
is($rpt->{slp_kgcm}, '1.045009056', 'slp_kgcm 201211220552-KREO');
is($rpt->{slp_lbin}, '14.86349424', 'slp_lbin 201211220552-KREO');
is($rpt->{slp_mb}, '1025', 'slp_mb 201211220552-KREO');
is($rpt->{slp_mmhg}, '769', 'slp_mmhg 201211220552-KREO');
is($rpt->{station_type}, 'Automated', 'station_type 201211220552-KREO');
is($rpt->{storm}, 'TSNO', 'storm 201211220552-KREO');
is($rpt->{temperature_c}, '-3', 'temperature_c 201211220552-KREO');
is($rpt->{temperature_f}, '27', 'temperature_f 201211220552-KREO');
is($rpt->{templateout}, undef, 'templateout 201211220552-KREO');
is($rpt->{tfile}, undef, 'tfile 201211220552-KREO');
is($rpt->{thpressure}, '53022', 'thpressure 201211220552-KREO');
is($rpt->{time}, '0552', 'time 201211220552-KREO');
is($rpt->{visibility_km}, undef, 'visibility_km 201211220552-KREO');
is($rpt->{visibility_mi}, undef, 'visibility_mi 201211220552-KREO');
is($rpt->{windchill_c}, '-6', 'windchill_c 201211220552-KREO');
is($rpt->{windchill_f}, '21', 'windchill_f 201211220552-KREO');
is($rpt->{winddir}, '130', 'winddir 201211220552-KREO');
is($rpt->{winddirtext}, 'Southeast', 'winddirtext 201211220552-KREO');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211220552-KREO');
is($rpt->{windgustkts}, '0', 'windgustkts 201211220552-KREO');
is($rpt->{windgustmph}, '0', 'windgustmph 201211220552-KREO');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211220552-KREO');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211220552-KREO');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211220552-KREO');
