package Geo::WeatherNWS;

#------------------------------------------------------------------------------
#
# Package Name:  Get Observations from NWS (Geo::WeatherNWS)
#
# Last Modified:  18 December 2001 - Prepared for CPAN - Marc Slagle
#
#------------------------------------------------------------------------------

require 5.005_62;
use strict;
use warnings;
use Net::FTP;
use IO::Handle;
use POSIX;

our $VERSION = '0.17';

sub new
{
        my $Proto=shift;
        my $Class=ref($Proto) || $Proto;
        my $Self={};
        bless $Self;
        return $Self;
}

sub getreport
{
        my $Self=shift;
	my $Station=shift;

	my $Tmpfile=POSIX::tmpnam();
	my $Code=uc($Station);
	my @Cloudlevels;

	if (!$Code)
	{
		return $Self;
	}

	my $Ftp=Net::FTP->new("weather.noaa.gov", Debug => 0);
	$Ftp->login("anonymous",'perl@cpan.org');
	$Ftp->cwd("/data/observations/metar/stations");
	my $Rcode=$Ftp->get("$Code.TXT","$Tmpfile");
	$Ftp->quit;

	if (!$Rcode)
	{
		return $Self;
	}

#------------------------------------------------------------------------------
#	We use %Converter to translate 2-letter codes into text
#------------------------------------------------------------------------------

	my %Converter = (
			BR => 'Mist',
			TS => 'Thunderstorm',
			MI => 'Shallow',
			PR => 'Partial',
			BC => 'Patches',
			DR => 'Low Drifting',
			BL => 'Blowing',
			SH => 'Shower',
			FZ => 'Freezing',
			DZ => 'Drizzle',
			RA => 'Rain',
			SN => 'Snow',
			SG => 'Snow Grains',
			IC => 'Ice Crystals',
			PE => 'Ice Pellets',
			PL => 'Ice Pellets',
			GR => 'Hail',
			GS => 'Small Hail/Snow',
			UP => 'Unknown Precipitation',
			FG => 'Fog',
			FU => 'Smoke',
			VA => 'Volcanic Ash',
			DU => 'Widespread Dust',
			SA => 'Sand',
			HZ => 'Haze',
			PY => 'Spray',
			PO => 'Dust Devils',
			SQ => 'Squalls',
			FC => 'Tornado',
			SS => 'Sandstorm'
			);

	local $/;
	local *F;
	open(F, "< $Tmpfile\0");
	my $Data=<F>;
	close(F);
	$Data=~tr/\n/ /d;

	$Self->{obs}="$Data";

	my @Splitter=split(/\s+/, $Data);
	my $Line;

#------------------------------------------------------------------------------
#	Break the METAR observations down and decode
#------------------------------------------------------------------------------

	foreach $Line (@Splitter)
	{
		if (($Line =~ /^([A-Z][A-Z][A-Z][A-Z])/) && ($Line ne "AUTO"))
		{
			$Self->{code}="$Line";
		}

#------------------------------------------------------------------------------
#		Report Time
#------------------------------------------------------------------------------

		elsif ($Line =~ /([0-9]Z)$/)
		{
			my $Timez=substr($Line,2,4);
			$Self->{time}="$Timez";
			$Self->{day}=substr($Line,0,2);
		}

#------------------------------------------------------------------------------
#		Wind speed and direction
#------------------------------------------------------------------------------

		elsif ($Line =~ /([0-9]KT)$/)
		{
			my $Newline;
			my $Variable;

			if ($Line =~ /VRB/)
			{
				$Newline=substr($Line,3);
				$Variable="1";
			}
			else
			{
				$Newline=$Line;
			}

			my $Winddir=substr($Newline,0,3);
			$Winddir=~tr/[A-Z]/ /d;
			$Winddir=$Winddir-0;
			my $Winddirtxt;

			if ($Variable)
			{
				$Winddirtxt="Variable";
			}
			elsif (($Winddir <= 22.5) || ($Winddir >= 337.5))
			{
				$Winddirtxt="North";
			}
			elsif (($Winddir <= 67.5) && ($Winddir >= 22.5))
			{
				$Winddirtxt="Northeast";
			}
			elsif (($Winddir <= 112.5) && ($Winddir >= 67.5))
			{
				$Winddirtxt="East";
			}
			elsif (($Winddir <= 157.5) && ($Winddir >= 112.5))
			{
				$Winddirtxt="Southeast";
			}
			elsif (($Winddir <= 202.5) && ($Winddir >= 157.5))
			{
				$Winddirtxt="South";
			}
			elsif (($Winddir <= 247.5) && ($Winddir >= 202.5))
			{
				$Winddirtxt="Southwest";
			}
			elsif (($Winddir <= 292.5) && ($Winddir >= 247.5))
			{
				$Winddirtxt="West";
			}
			elsif (($Winddir <= 337.5) && ($Winddir >= 292.5))
			{
				$Winddirtxt="Northwest";
			}

			my $Windspeedkts=substr($Line,3);
			my $Windgustkts=0;
	
			if ($Windspeedkts =~ /G/)
			{
				my @Splitter=split(/G/, $Windspeedkts);
			
				$Windspeedkts=$Splitter[0];
				$Windgustkts=$Splitter[1];
			}

			$Windspeedkts=~tr/[A-Z]//d;
			$Windgustkts=~tr/[A-Z]//d;

			if ($Windspeedkts == 0)
			{
				$Winddirtxt="Calm";
			}

			my $MPH=int($Windspeedkts/0.868391);
			my $GMPH=int($Windgustkts/0.868391);

			$Self->{windspeedkts}=$Windspeedkts;
			$Self->{windgustkts}=$Windgustkts;
			$Self->{windspeedkts}=$Self->{windspeedkts}-0;
			$Self->{windspeedmph}=$MPH;
			$Self->{windgustmph}=$GMPH;
			$Self->{winddirtext}=$Winddirtxt;
			$Self->{winddir}=$Winddir;		
			$Self->{winddir}=$Self->{winddir}-0;
		}

#------------------------------------------------------------------------------
#		Current Visibility
#------------------------------------------------------------------------------

		elsif ($Line =~ /([0-9]SM)$/)
		{
			$Line=~tr/[A-Z]//d;
			my $Viskm=int($Line*1.6);
			$Self->{visibility_mi}="$Line";
			$Self->{visibility_km}="$Viskm";
		}

#------------------------------------------------------------------------------
#		Current Conditions
#------------------------------------------------------------------------------

		elsif (
		($Line =~ /BR([A-Z])*/) ||
		($Line =~ /[\+\-]VC([A-Z])*/) ||
		($Line =~ /^VC([A-Z])*/) ||
		($Line =~ /TS([A-Z])*/) ||
		($Line =~ /MI([A-Z])*/) ||
		($Line =~ /PR([A-Z])*/) ||
		($Line =~ /BC([A-Z])*/) ||
		($Line =~ /DR([A-Z])*/) ||
		($Line =~ /BL([A-Z])*/) ||
		($Line =~ /SH([A-Z])*/) ||
		($Line =~ /FZ([A-Z])*/) ||
		($Line =~ /DZ([A-Z])*/) ||
		($Line =~ /RA([A-Z])*/) ||
		($Line =~ /SN([A-Z])*/) ||
		($Line =~ /SG([A-Z])*/) ||
		($Line =~ /IC([A-Z])*/) ||
		($Line =~ /PE([A-Z])*/) ||
		($Line =~ /PL([A-Z])*/) ||
		($Line =~ /GR([A-Z])*/) ||
		($Line =~ /GS([A-Z])*/) ||
		($Line =~ /UP([A-Z])*/) ||
		($Line =~ /FG([A-Z])*/) ||
		($Line =~ /FU([A-Z])*/) ||
		($Line =~ /VA([A-Z])*/) ||
		($Line =~ /DU([A-Z])*/) ||
		($Line =~ /SA([A-Z])*/) ||
		($Line =~ /HZ([A-Z])*/) ||
		($Line =~ /PY([A-Z])*/) ||
		($Line =~ /PO([A-Z])*/) ||
		($Line =~ /SQ([A-Z])*/) ||
		($Line =~ /FC([A-Z])*/) ||
		($Line =~ /SS([A-Z])*/))
		{
			my $Old=$Self->{conditionstext};

			if (($Line =~ /^\-/) || ($Line =~ /^\+/))
			{
				if (!$Self->{conditions1})
				{

				my $Modifier=substr($Line,0,1);
				my $Block1t=substr($Line,1,2);
				my $Block2t=substr($Line,3,4);
				
				my $Block1=$Converter{$Block1t};
				$Self->{conditions1}="$Block1";
				my $Block2=$Converter{$Block2t};
				$Self->{conditions2}="$Block2";

				if ($Modifier =~ /^\-/)
				{
					$Block1="Light $Block1";
					$Self->{intensity}="Light";
				}
				elsif ($Modifier =~ /^\+/)
				{
					$Block1="Heavy $Block1";
					$Self->{intensity}="Heavy";
				}

				if ($Block2)
				{
					$Block1="$Block1 $Block2";
				}
				
				if ($Old)
				{
					if ($Block1 eq "SH")
					{
						$Self->{conditionstext}="$Block2 of $Block1";
						$Self->{conditions1}="Showers of";
					}
					else
					{
						$Self->{conditionstext}="$Old and $Block1";
					}
				}
				else
				{
					$Self->{conditionstext}="$Block1";
				}
				}
			}
			else
			{
				if (!$Self->{conditions1})
				{
				my $Block1t=substr($Line,0,2);
				my $Block2t=substr($Line,2,4);

				my $Block1=$Converter{$Block1t};
				$Self->{conditions1}="$Block1";
				my $Block2=$Converter{$Block2t};
				$Self->{conditions2}="$Block2";

				if ($Block2)
				{
					$Block1="$Block1 $Block2";
				}
				
				if ($Old)
				{
					if ($Block1 eq "SH")
					{
						$Self->{conditionstext}="$Block2 of $Block1";
						$Self->{conditions1}="Showers of";
					}
					else
					{
						$Self->{conditionstext}="$Old and $Block1";
					}
				}
				else
				{
					$Self->{conditionstext}="$Block1";
				}
				}
			}
		}

#------------------------------------------------------------------------------
#		Cloud Cover
#------------------------------------------------------------------------------

		elsif (($Line =~ /^(VV[0-9])/) ||
		($Line =~ /^(SKC[0-9])/) ||
		($Line =~ /^(CLR)/) ||
		($Line =~ /^(FEW)/) ||
		($Line =~ /^(SCT[0-9])/) ||
		($Line =~ /^(BKN[0-9])/) ||
		($Line =~ /^(OVC[0-9])/))
		{	
			push (@Cloudlevels,$Line);
		
			if ($Line =~ /^(CLR)/)
			{
				$Self->{cloudcover}="Clear";
			}
			elsif ($Line =~ /^(FEW)/)
			{
				$Self->{cloudcover}="Fair";
			}
			elsif ($Line =~ /^(SCT[0-9])/)
			{
				$Self->{cloudcover}="Partly Cloudy";
			}
			elsif ($Line =~ /^(BKN[0-9])/)
			{
				$Self->{cloudcover}="Mostly Cloudy";
			}
			elsif ($Line =~ /^(OVC[0-9])/)
			{
				$Self->{cloudcover}="Cloudy";
			}
		}

#------------------------------------------------------------------------------
#		Get the temperature/dewpoint and calculate windchill/heat index
#------------------------------------------------------------------------------

		elsif (($Line =~ /^([0-9][0-9]\/[0-9][0-9])/) || ($Line =~ /^([0-9][0-9]\/)/) || ($Line =~ /^(M[0-9][0-9]\/M[0-9][0-9])/) || ($Line =~ /^([0-9][0-9]\/M[0-9][0-9])/))
		{	
			my @Splitter=split(/\//,$Line);
			my $Temperature=$Splitter[0];
			my $Dewpoint=$Splitter[1];

			if ($Temperature =~ /M/)
			{
				$Temperature=~tr/[A-Z]//d;
				$Temperature=($Temperature-($Temperature*2));
			}

			if ($Dewpoint =~ /M/)
			{
				$Dewpoint=~tr/[A-Z]//d;
				$Dewpoint=($Dewpoint-($Dewpoint*2));
			}

			my $Tempf=int((1.8*$Temperature)+32);
			my $Dewf=int((1.8*$Dewpoint)+32);
		
			my $Es=6.11*10.0**(7.5*$Temperature/(237.7+$Temperature)); 
			my $E=6.11*10.0**(7.5*$Dewpoint/(237.7+$Dewpoint));
			my $rh=int(($E/$Es)*100);

			my $F=$Tempf;

			my $Heati=int(-42.379 + 2.04901523*$F + 10.14333127*$rh - 0.22475541*$F*$rh - 6.83783e-03*$F**2 - 5.481717e-02*$rh**2 + 1.22874e-03*$F**2*$rh + 8.5282e-04*$F*$rh**2 - 1.99e-06*$F**2*$rh**2);
			my $Heatic=int(5/9 * ($Heati -32)); 

			my $Windc=int(0.0817*(3.71*$Self->{windspeedmph}**0.5 + 5.81 - 0.25*$Self->{windspeedmph})*($F - 91.4) + 91.4);
			my $Windcc=int(5/9 * ($Windc - 32));

			$Self->{temperature_c}=$Temperature;
			$Self->{temperature_f}=$Tempf;
			$Self->{dewpoint_c}=$Dewpoint;
			$Self->{dewpoint_f}=$Dewf;
			$Self->{relative_humidity}=$rh;
			$Self->{heat_index_c}=$Heatic;
			$Self->{heat_index_f}=$Heati;
			$Self->{windchill_c}=$Windcc;
			$Self->{windchill_f}=$Windc;

		}

#------------------------------------------------------------------------------
#		Calculate the atmospheric pressure in different formats.
#		Based on report (inches of mercury)
#------------------------------------------------------------------------------

		elsif ($Line =~ /^(A[0-9][0-9][0-9][0-9])/)
		{	
			$Line=~tr/[A-Z]//d;
			my $Part1=substr($Line,0,2);
			my $Part2=substr($Line,2,4);
			$Self->{pressure_inhg}="$Part1.$Part2";

			my $mb=int($Self->{pressure_inhg}*33.8639);
			my $mmHg=int($Self->{pressure_inhg}*25.4);
			my $lbin=($Self->{pressure_inhg}*0.491154);
			my $kgcm=($Self->{pressure_inhg}*0.0345316);

			$Self->{pressure_mb}=$mb;
			$Self->{pressure_mmhg}=$mmHg;
			$Self->{pressure_lbin}=$lbin;
			$Self->{pressure_kgcm}=$kgcm;

		}	

#------------------------------------------------------------------------------
#		If the remarks section is starting, we are done
#------------------------------------------------------------------------------

		elsif ($Line =~ /^(RMK)/)
		{	
			last;
		}
	}
	
#------------------------------------------------------------------------------
#	Read the remarks into an array for later processing
#------------------------------------------------------------------------------

	my $Remarks=0;
	my @Remarkarray;

	foreach $Line (@Splitter)
	{
		if ($Line =~ /^(RMK)/)
		{
			$Remarks=1;
		}

		if ($Remarks)
		{
			push(@Remarkarray,$Line);
		}
	}

#------------------------------------------------------------------------------
#	Delete the temp file
#------------------------------------------------------------------------------

	unlink("$Tmpfile");
	$Self->{cloudlevel_arrayref}=\@Cloudlevels;
	$Self->{station_type}="Manual";

	my $Remark;

#------------------------------------------------------------------------------
#	Now we process remarks.  These arent all going to be in the report, 
#	and usually aren't.  This has made it hard to develop.  This section
#	is basically incomplete, but you can get some of the data out
#------------------------------------------------------------------------------

	foreach $Remark (@Remarkarray)
	{
		if ($Remark)
		{
			my $Line=$Remark;

			if ($Remark =~ /^A[0-9]/)
			{
				$Self->{station_type}="Automated";
			}
			elsif ($Remark =~ /^SLP/)
			{
				$Remark=~tr/[A-Z]//d;

				if ($Remark >= 800)
				{
					$Remark=$Remark*.1;
					$Remark=$Remark+900;
				}
				else
				{
					$Remark=$Remark*.1;
					$Remark=$Remark+1000;
				}

				$Self->{slp_inhg}=($Remark*0.0295300);
				$Self->{slp_inhg}=substr($Self->{slp_inhg},0,5);
				$Self->{slp_mmhg}=int($Remark*0.750062);
				$Self->{slp_lbin}=($Remark*0.0145038);
				$Self->{slp_kgcm}=($Remark*0.00101972);
				$Self->{slp_mb}=int($Remark);
			}			

#------------------------------------------------------------------------------
#			Thunderstorm info
#------------------------------------------------------------------------------

			elsif ($Remark =~ /^TS/)
			{
				$Self->{storm}=$Remark;
			}		

#------------------------------------------------------------------------------
#			Three hour pressure tendency
#------------------------------------------------------------------------------
	
			elsif ($Remark =~ /^5[0-9]/)
			{
				$Self->{thpressure}=$Remark;
			}			

#------------------------------------------------------------------------------
#			Automated station needs maintenance
#------------------------------------------------------------------------------

			elsif ($Remark =~ /\$/)
			{
				$Self->{maintenance}=$Remark;
			}			

#------------------------------------------------------------------------------
#			Precipitation since last report (100ths of an inch)
#------------------------------------------------------------------------------

			elsif ($Remark =~ /^P[0-9]/)
			{
				$Self->{precipslr}=$Remark;
			}			

#------------------------------------------------------------------------------
#			Event beginning or ending
#------------------------------------------------------------------------------

			elsif (
			($Line =~ /^BRB/) ||
			($Line =~ /^TSB/) ||
			($Line =~ /^MIB/) ||
			($Line =~ /^PRB/) ||
			($Line =~ /^BCB/) ||
			($Line =~ /^DRB/) ||
			($Line =~ /^BLB/) ||
			($Line =~ /^SHB/) ||
			($Line =~ /^FZB/) ||
			($Line =~ /^DZB/) ||
			($Line =~ /^RAB/) ||
			($Line =~ /^SNB/) ||
			($Line =~ /^SGB/) ||
			($Line =~ /^ICB/) ||
			($Line =~ /^PEB/) ||
			($Line =~ /^GRB/) ||
			($Line =~ /^GSB/) ||
			($Line =~ /^UPB/) ||
			($Line =~ /^FGB/) ||
			($Line =~ /^FUB/) ||
			($Line =~ /^VAB/) ||
			($Line =~ /^DUB/) ||
			($Line =~ /^SAB/) ||
			($Line =~ /^HZB/) ||
			($Line =~ /^PYB/) ||
			($Line =~ /^POB/) ||
			($Line =~ /^SQB/) ||
			($Line =~ /^FCB/) ||
			($Line =~ /^SSB/))
			{
				$Self->{eventbe}=$Remark;
			}

#------------------------------------------------------------------------------
#			Precise temperature reading
#------------------------------------------------------------------------------

			elsif ($Remark =~ /^T[0-9]/)
			{
				$Self->{ptemerature}=$Remark;
			}			
		}
	}

	$Self->{remark_arrayref}=\@Remarkarray;
        return $Self;
}

1;
__END__

=head1 NAME

Geo::WeatherNWS - A simple way to get current weather data from the NWS.

=head1 SYNOPSIS

  use Geo::WeatherNWS;

  my $Report=Geo::WeatherNWS::new();
  $Report=>getreport('kcvg');		# kcvg is the station code for 
					# Cincinnati, OH

=head1 DESCRIPTION

  This module is an early release of what will hopefully be a robust way
  for Perl Programmers to get current weather data from the National Weather
  Service.  The only part implemented so far is the getreport routine, which
  retrieves the most current METAR formatted station report and decodes it
  into a hash that you can use.

  I thought this would be a useful module, considering that a lot of sites
  today seem to get their weather data directly through other sites via http.
  When the site you are getting your weather data from changes format, then 
  you end up having to re-code your parsing program.  With the weather module,
  all you need is a four-letter station code to get the most recent weather
  observations.  If you do not know what the station code is for your area,
  check the site at http://205.156.54.206/oso/siteloc.shtml to start your 
  search.  The information is out there, and I should include a list of 
  station codes in the next release.

  Since this module uses the NWS METAR Observations, you can get weather
  reports from anywhere in the world that has a four-letter station code.

  This module uses the POSIX and Net::FTP modules, so you'll have to make 
  sure that everything is set up with them before you can use the module. 
  
  my $Report=Geo::WeatherNWS::new();
  $Report->getreport('station');

  You can now use the $Report hashref to display the information.
  Some of the returned info is about the report itself, such as:

  $Report->{day}          	  # Report Date
  $Report->{time}         	  # Report Time
  $Report->{station_type}         # Station Type (auto or manual)
  $Report->{obs}          	  # The Observation Text (encoded)
  $Report->{code}         	  # The Station Code

  These are the returned values specific tothe conditions:

  $Report->{conditionstext} 	  # Conditions text
  $Report->{conditions1}	  # First Part
  $Report->{conditions2}	  # Second Part

  These are the returned values specific to wind:

  $Report->{windspeedmph}         # Wind Speed (in mph)
  $Report->{windspeedkts}         # Wind Speed (in kts)
  $Report->{winddir}              # Wind Direction (in degrees)
  $Report->{winddirtext}          # Wind Direction (text version)
  $Report->{windgustmph}          # Wind Gusts (mph)
  $Report->{windgustkts}          # Wind Gusts (kts)

  These are the retunred values specific to temperature and 
  humidity:

  $Report->{temperature_f}        # Temperature (degrees f)
  $Report->{temperature_c}        # Temperature (degrees c)
  $Report->{dewpoint_f}           # Dewpoint (degrees f)
  $Report->{dewpoint_c}           # Dewpoint (degrees c)
  $Report->{relative_humidity}    # Relative Humidity (in percent)
  $Report->{windchill_f}          # Wind Chill (degrees f)
  $Report->{windchill_c}          # Wind Chill (degrees c)
  $Report->{heat_index_f}         # Heat Index (degrees f)
  $Report->{heat_index_c}         # Heat Index (degrees c)

  Note: Due to the formulas used to get the heat index and windchill, 
  sometimes these values are a little strange.  A check to see if the heat 
  index is above the temperature before displaying it would be a good thing 
  for you to do.  You probably don't want to display the winchill unless 
  its cold either.

  These are the return values for clouds and visibility:

  $Report->{cloudcover}           # Cloudcover (text)
  $Report->{cloudlevel_arrayref}  # Arrayref holding all cloud levels
  $Report->{visibility_mi}        # Visibility (miles)
  $Report->{visibility_km}        # Visibility (kilometers)

  These are the return values for air pressure:

  $Report->{pressure_inhg}        # Air Pressure (in mercury)
  $Report->{pressure_mmhg}        # Air Pressure (in mm mercury)
  $Report->{pressure_kgcm}        # Air Pressure (kg per cm)
  $Report->{pressure_mb}          # Air Pressure (mb)
  $Report->{pressure_lbin}        # Air Pressure (psi)

  Other values MAY be returned, but only if there are remarks appended
  to the observations.  This section of the code is more experimental,
  and these names could change in future releases.

  $Report->{remark_arrayref}      # Arrayref holding all remarks
  $Report->{ptemerature}          # Precise Tepmerature Reading
  $Report->{storm}		  # Thunderstorm stats
  $Report->{slp_inhg}             # Air Pressure at Sea Level (in mercury)
  $Report->{slp_mmhg}             # Air Pressure at Sea Level (mm mercury)
  $Report->{slp_kgcm}             # Air Pressure at Sea Level (kg per cm)
  $Report->{slp_lbin}             # Air Pressure at Sea Level (psi)
  $Report->{slp_mb}               # Air Pressure at Sea Level (mb)

  Another note:  Do not be surprised if sometimes the values come back
  empty. The weather stations are not required to place all of the 
  information in the reports.

=head1 EXAMPLE
  
use Geo::Weather;

my $Report=Geo::Weather::new();
$Report->getreport('khao');		# For Hamilton, OH

print "Temperature is $Report->{temperature_f} degrees\n";
print "Air Pressure is $Report->{pressure_inhg} inches\n";

# If it isnt raining, etc - just print cloud cover

if ($Report->{conditionstext})
{
	print "Conditions: $Report->{conditionstext}\n";
}
else
{	
	print "Conditions: $Report->{cloudcover}\n";
}

=head1 AUTHOR

Marc Slagle - marc.slagle@fulkertconsulting.com

=cut
