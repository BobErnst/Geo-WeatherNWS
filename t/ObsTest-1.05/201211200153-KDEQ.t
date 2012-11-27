#!perl -T

use strict;
use warnings;

# Test 201211200153-KDEQ
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:53 KDEQ 200153Z AUTO 10003KT 10SM BKN055 OVC080 12/07 A3018 RMK AO2 SLP219 T01220072 TSNO 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:53 KDEQ 200153Z AUTO 10003KT 10SM BKN055 OVC080 12/07 A3018 RMK AO2 SLP219 T01220072 TSNO ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Cloudy', 'cloudcover 201211200153-KDEQ');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['BKN055','OVC080'], 'cloudlevel_arrayref 201211200153-KDEQ');
is($rpt->{code}, 'KDEQ', 'code 201211200153-KDEQ');
is($rpt->{conditions1}, undef, 'conditions1 201211200153-KDEQ');
is($rpt->{conditions2}, undef, 'conditions2 201211200153-KDEQ');
is($rpt->{conditionstext}, 'Mostly Cloudy', 'conditionstext 201211200153-KDEQ');
is($rpt->{day}, '20', 'day 201211200153-KDEQ');
is($rpt->{dewpoint_c}, '07', 'dewpoint_c 201211200153-KDEQ');
is($rpt->{dewpoint_f}, '45', 'dewpoint_f 201211200153-KDEQ');
is($rpt->{error}, undef, 'error 201211200153-KDEQ');
is($rpt->{errortext}, undef, 'errortext 201211200153-KDEQ');
is($rpt->{eventbe}, undef, 'eventbe 201211200153-KDEQ');
is($rpt->{heat_index_c}, '31', 'heat_index_c 201211200153-KDEQ');
is($rpt->{heat_index_f}, '89', 'heat_index_f 201211200153-KDEQ');
is($rpt->{http}, undef, 'http 201211200153-KDEQ');
is($rpt->{intensity}, undef, 'intensity 201211200153-KDEQ');
is($rpt->{maintenance}, undef, 'maintenance 201211200153-KDEQ');
is($rpt->{obs}, '2012/11/20 01:53 KDEQ 200153Z AUTO 10003KT 10SM BKN055 OVC080 12/07 A3018 RMK AO2 SLP219 T01220072 TSNO ', 'obs 201211200153-KDEQ');
is($rpt->{precipslr}, undef, 'precipslr 201211200153-KDEQ');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211200153-KDEQ');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211200153-KDEQ');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211200153-KDEQ');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200153-KDEQ');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211200153-KDEQ');
is($rpt->{ptemperature}, 'T01220072', 'ptemperature 201211200153-KDEQ');
is($rpt->{relative_humidity}, '71', 'relative_humidity 201211200153-KDEQ');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2','1021.9','T01220072','TSNO'], 'remark_arrayref 201211200153-KDEQ');
is($rpt->{slp_inhg}, '30.17', 'slp_inhg 201211200153-KDEQ');
is($rpt->{slp_kgcm}, '1.042051868', 'slp_kgcm 201211200153-KDEQ');
is($rpt->{slp_lbin}, '14.82143322', 'slp_lbin 201211200153-KDEQ');
is($rpt->{slp_mb}, '1022', 'slp_mb 201211200153-KDEQ');
is($rpt->{slp_mmhg}, '766', 'slp_mmhg 201211200153-KDEQ');
is($rpt->{station_type}, 'Automated', 'station_type 201211200153-KDEQ');
is($rpt->{storm}, 'TSNO', 'storm 201211200153-KDEQ');
is($rpt->{temperature_c}, '12', 'temperature_c 201211200153-KDEQ');
is($rpt->{temperature_f}, '54', 'temperature_f 201211200153-KDEQ');
is($rpt->{templateout}, undef, 'templateout 201211200153-KDEQ');
is($rpt->{tfile}, undef, 'tfile 201211200153-KDEQ');
is($rpt->{thpressure}, undef, 'thpressure 201211200153-KDEQ');
is($rpt->{time}, '0153', 'time 201211200153-KDEQ');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200153-KDEQ');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200153-KDEQ');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200153-KDEQ');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200153-KDEQ');
is($rpt->{winddir}, '100', 'winddir 201211200153-KDEQ');
is($rpt->{winddirtext}, 'East', 'winddirtext 201211200153-KDEQ');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200153-KDEQ');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200153-KDEQ');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200153-KDEQ');
is($rpt->{windspeedkmh}, '6', 'windspeedkmh 201211200153-KDEQ');
is($rpt->{windspeedkts}, '3', 'windspeedkts 201211200153-KDEQ');
is($rpt->{windspeedmph}, '3', 'windspeedmph 201211200153-KDEQ');
