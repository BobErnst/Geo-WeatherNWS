#!perl -T

use strict;
use warnings;

# Test 201211200158-KSLI
#
# Expected results from Geo::WeatherNWS version 1.05
#
# 2012/11/20 01:58 KSLI 200158Z AUTO 27004KT 10SM CLR 15/15 A3018 RMK AO2 SLPNO T01530153 

use Test::More tests => 52;
use Geo::WeatherNWS;

my $rpt = Geo::WeatherNWS::new();
my $obs = '2012/11/20 01:58 KSLI 200158Z AUTO 27004KT 10SM CLR 15/15 A3018 RMK AO2 SLPNO T01530153 ';
my $decode = $rpt->decodeobs($obs);

is($rpt->{cloudcover}, 'Clear', 'cloudcover 201211200158-KSLI');
is_deeply(\$rpt->{cloudlevel_arrayref}, \['CLR'], 'cloudlevel_arrayref 201211200158-KSLI');
is($rpt->{code}, 'KSLI', 'code 201211200158-KSLI');
is($rpt->{conditions1}, undef, 'conditions1 201211200158-KSLI');
is($rpt->{conditions2}, undef, 'conditions2 201211200158-KSLI');
is($rpt->{conditionstext}, 'Clear', 'conditionstext 201211200158-KSLI');
is($rpt->{day}, '20', 'day 201211200158-KSLI');
is($rpt->{dewpoint_c}, '15', 'dewpoint_c 201211200158-KSLI');
is($rpt->{dewpoint_f}, '59', 'dewpoint_f 201211200158-KSLI');
is($rpt->{error}, undef, 'error 201211200158-KSLI');
is($rpt->{errortext}, undef, 'errortext 201211200158-KSLI');
is($rpt->{eventbe}, undef, 'eventbe 201211200158-KSLI');
is($rpt->{heat_index_c}, '14', 'heat_index_c 201211200158-KSLI');
is($rpt->{heat_index_f}, '56', 'heat_index_f 201211200158-KSLI');
is($rpt->{http}, undef, 'http 201211200158-KSLI');
is($rpt->{intensity}, undef, 'intensity 201211200158-KSLI');
is($rpt->{maintenance}, undef, 'maintenance 201211200158-KSLI');
is($rpt->{obs}, '2012/11/20 01:58 KSLI 200158Z AUTO 27004KT 10SM CLR 15/15 A3018 RMK AO2 SLPNO T01530153 ', 'obs 201211200158-KSLI');
is($rpt->{precipslr}, undef, 'precipslr 201211200158-KSLI');
is($rpt->{pressure_inhg}, '30.18', 'pressure_inhg 201211200158-KSLI');
is($rpt->{pressure_kgcm}, '1.042163688', 'pressure_kgcm 201211200158-KSLI');
is($rpt->{pressure_lbin}, '14.82302772', 'pressure_lbin 201211200158-KSLI');
is($rpt->{pressure_mb}, '1022', 'pressure_mb 201211200158-KSLI');
is($rpt->{pressure_mmhg}, '767', 'pressure_mmhg 201211200158-KSLI');
is($rpt->{ptemperature}, 'T01530153', 'ptemperature 201211200158-KSLI');
is($rpt->{relative_humidity}, '100', 'relative_humidity 201211200158-KSLI');
is_deeply(\$rpt->{remark_arrayref}, \['RMK','AO2',1000,'T01530153'], 'remark_arrayref 201211200158-KSLI');
is($rpt->{slp_inhg}, '29.53', 'slp_inhg 201211200158-KSLI');
is($rpt->{slp_kgcm}, '1.01972', 'slp_kgcm 201211200158-KSLI');
is($rpt->{slp_lbin}, '14.5038', 'slp_lbin 201211200158-KSLI');
is($rpt->{slp_mb}, '1000', 'slp_mb 201211200158-KSLI');
is($rpt->{slp_mmhg}, '750', 'slp_mmhg 201211200158-KSLI');
is($rpt->{station_type}, 'Automated', 'station_type 201211200158-KSLI');
is($rpt->{storm}, undef, 'storm 201211200158-KSLI');
is($rpt->{temperature_c}, '15', 'temperature_c 201211200158-KSLI');
is($rpt->{temperature_f}, '59', 'temperature_f 201211200158-KSLI');
is($rpt->{templateout}, undef, 'templateout 201211200158-KSLI');
is($rpt->{tfile}, undef, 'tfile 201211200158-KSLI');
is($rpt->{thpressure}, undef, 'thpressure 201211200158-KSLI');
is($rpt->{time}, '0158', 'time 201211200158-KSLI');
is($rpt->{visibility_km}, '16', 'visibility_km 201211200158-KSLI');
is($rpt->{visibility_mi}, '10', 'visibility_mi 201211200158-KSLI');
is($rpt->{windchill_c}, undef, 'windchill_c 201211200158-KSLI');
is($rpt->{windchill_f}, undef, 'windchill_f 201211200158-KSLI');
is($rpt->{winddir}, '270', 'winddir 201211200158-KSLI');
is($rpt->{winddirtext}, 'West', 'winddirtext 201211200158-KSLI');
is($rpt->{windgustkmh}, '0', 'windgustkmh 201211200158-KSLI');
is($rpt->{windgustkts}, '0', 'windgustkts 201211200158-KSLI');
is($rpt->{windgustmph}, '0', 'windgustmph 201211200158-KSLI');
is($rpt->{windspeedkmh}, '7', 'windspeedkmh 201211200158-KSLI');
is($rpt->{windspeedkts}, '4', 'windspeedkts 201211200158-KSLI');
is($rpt->{windspeedmph}, '5', 'windspeedmph 201211200158-KSLI');
