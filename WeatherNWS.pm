package Geo::WeatherNWS;

#------------------------------------------------------------------------------
#
# Package Name:  Get Observations from NWS (Geo::WeatherNWS)
#
# Last Modified:  18 December 2001 - Prepared for CPAN - Marc Slagle
#		  24 February 2002 - Adding server/error code - Marc
#
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# We need these
#------------------------------------------------------------------------------

require 5.005_62;
use strict;
use warnings;
use Net::FTP;
use IO::Handle;
use POSIX;

#------------------------------------------------------------------------------
# Version
#------------------------------------------------------------------------------

our $VERSION = '1.03';

#------------------------------------------------------------------------------
# Lets create a new self
#------------------------------------------------------------------------------

sub new
{
        my $Proto=shift;
        my $Class=ref($Proto) || $Proto;
        my $Self={};

	$Self->{servername}="weather.noaa.gov";
	$Self->{username}="anonymous";
	$Self->{password}='weather@cpan.org';
	$Self->{directory}="/data/observations/metar/stations";

        bless $Self;
        return $Self;
}

#------------------------------------------------------------------------------
# Adding ability to edit server/user/directory at runtime...
#------------------------------------------------------------------------------

sub setservername
{
	my $Self=shift;
	my $Servername=shift;
	$Self->{servername}=$Servername;
	return $Self;
}

sub setusername
{
	my $Self=shift;
	my $User=shift;
	$Self->{username}=$User;
	return $Self;
}

sub setpassword
{
	my $Self=shift;
	my $Pass=shift;
	$Self->{password}=$Pass;
	return $Self;
}

sub setdirectory
{
	my $Self=shift;
	my $Dir=shift;
	$Self->{directory}=$Dir;
	return $Self;
}

sub settemplatefile
{
	my $Self=shift;
	my $Tfile=shift;
	$Self->{tfile}=$Tfile;
	return $Self;
}

#------------------------------------------------------------------------------
# Here we get to FTP to the NWS and get the data
#------------------------------------------------------------------------------

sub getreporthttp
{
	my $Self=shift;
	my $Code=shift;
	$Self->{http}="http://weather.noaa.gov/cgi-bin/mgetmetar.pl?cccc=$Code";
	my $Ret=&getreport($Self,$Code);
	return $Ret;
}

sub getreport
{
        my $Self=shift;
	my $Station=shift;

	$Self->{error}="0";
	my $Tmpfile=POSIX::tmpnam();
	my $Code=uc($Station);

	if (!$Code)
	{
		$Self->{error}="1";
		$Self->{errortext}="No Station Code Entered\n";
		return $Self;
	}


	if ($Self->{http})
	{
         	use LWP::UserAgent;
		my $Ua=LWP::UserAgent->new();
		$Ua->agent("Geo::WeatherNWS 1.03");

		my $Req=HTTP::Request->new(GET => "$Self->{http}");
		$Req->content_type('application/x-www-form-urlencoded');
		my $Res=$Ua->request($Req);
		
		if ($Res->is_success)
		{
			my @Lines=split(/\n/,$Res->content);
			foreach my $Line (@Lines)
			{
				if ($Line =~ /^([A-Z][A-Z][A-Z][A-Z])/)
				{
					$Self->{obs}=$Line;
					last;
				}
			}
		}
	}
	else
	{
#		Some users needed this for firewalls...
		my $Ftp=Net::FTP->new("$Self->{servername}", Debug => 0, Passive => 1);
#		my $Ftp=Net::FTP->new("$Self->{servername}", Debug => 0);
		$Ftp->login("$Self->{username}","$Self->{password}");
		my $Rcode=$Ftp->code();
		my $Message=$Ftp->message();

		if ($Rcode =~ /^[45]/)
		{
			$Self->{error}="$Rcode";
			$Self->{errortext}="$Message";
			return $Self;
		}
	
		$Ftp->cwd("$Self->{directory}");
		$Rcode=$Ftp->code();
		$Message=$Ftp->message();

		if ($Rcode =~ /^[45]/)
		{
			$Self->{error}="$Rcode";
			$Self->{errortext}="$Message";
			return $Self;
		}

		$Rcode=$Ftp->get("$Code.TXT","$Tmpfile");
		$Rcode=$Ftp->code();
		$Message=$Ftp->message();
		$Ftp->quit;

		if ($Rcode =~ /^[45]/)
		{
			$Self->{error}="$Rcode";
			$Self->{errortext}="$Message";
			return $Self;
		}

		local $/;
		local *F;
		open(F, "< $Tmpfile\0");
		my $Data=<F>;
		close(F);
		$Data=~tr/\n/ /d;
	
		$Self->{obs}="$Data";
		unlink("$Tmpfile");
	}	
		
	$Self->decode();
	return $Self;
}

#------------------------------------------------------------------------------
# Decodeobs takes the obs in a string format and decodes them
#------------------------------------------------------------------------------

sub decodeobs
{
	my $Self=shift;
	my $Obs=shift;
	$Self->{obs}=$Obs;
	$Self->decode();
	return $Self;
}

#------------------------------------------------------------------------------
# Decode does the work, and is only called internally
#------------------------------------------------------------------------------

sub decode
{
	my $Self=shift;
	my @Cloudlevels;

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

	my @Splitter=split(/\s+/, $Self->{obs});
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

#------------------------------------------------------------------------------
#			Some stations were reporting fractions for this value
#------------------------------------------------------------------------------

			if ($Line =~ /\//)
			{
				my @Splitter=split(/\//,$Line);
				$Line=$Splitter[0]/$Splitter[1];
			}

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
				my ($Block1,$Block2);
				my $Modifier=substr($Line,0,1);
				my $Block1t=substr($Line,1,2);
				my $Block2t=substr($Line,3,4);
				
				$Block1=$Converter{$Block1t};
				$Self->{conditions1}="$Block1";

				if ($Block2t)
				{
					$Block2=$Converter{$Block2t};
					$Self->{conditions2}="$Block2";
				}

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
				my ($Block1,$Block2);
				my $Block1t=substr($Line,0,2);
				my $Block2t=substr($Line,2,4);

				$Block1=$Converter{$Block1t};
				$Self->{conditions1}="$Block1";

				if ($Block2)
				{
					$Block2=$Converter{$Block2t};
					$Self->{conditions2}="$Block2";
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

			if (!$Self->{conditionstext})
			{
				$Self->{conditionstext}=$Self->{cloudcover};
			}

		}

#------------------------------------------------------------------------------
#		Get the temperature/dewpoint and calculate windchill/heat index
#------------------------------------------------------------------------------

		elsif (($Line =~ /^([0-9][0-9]\/[0-9][0-9])/) || ($Line =~ /^(M[0-9][0-9]\/)/) || ($Line =~ /^(M[0-9][0-9]\/M[0-9][0-9])/) || ($Line =~ /^([0-9][0-9]\/M[0-9][0-9])/))
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

#			Old Formula
#			my $Windc=int(0.0817*(3.71*$Self->{windspeedmph}**0.5 + 5.81 - 0.25*$Self->{windspeedmph})*($F - 91.4) + 91.4);
#			New Formula

			my $Windc=int(35.74 + (0.6215 * $F) - (35.75 * ($Self->{windspeedmph}**0.16)) + ((0.4275*$F)*($Self->{windspeedmph}**0.16)));
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
#		Calculate the atmospheric pressure in different formats.
#		Based on report (millibars)
#------------------------------------------------------------------------------

		elsif ($Line =~ /^(Q[0-9][0-9][0-9][0-9])/)
		{	
			$Line=~tr/[A-Z]//d;
			$Self->{pressure_mb}=$Line;

			my $inhg=($Self->{pressure_mb}*0.02953);
			$Self->{pressure_inhg}=sprintf("%.2f", $inhg);
			my $mmHg=int($Self->{pressure_inhg}*25.4);
			my $lbin=($Self->{pressure_inhg}*0.491154);
			my $kgcm=($Self->{pressure_inhg}*0.0345316);

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

		        if ($Remark =~ /^AO[1-2]/)
		        {
               			 $Self->{station_type}="Automated";
		        }
			elsif ($Remark =~ /^SLP/)
			{
				$Remark=~tr/[A-Z]//d;

				if (($Remark) && ($Remark >= 800))
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

	my $Templatefile=$Self->{tfile};

	if ($Templatefile)
	{
		local $/;
		local *F;
		open(F, "< $Templatefile\0");
		my $tout=<F>;
		close(F);

	        $tout=~s{ %% ( .*? ) %% }
                        { exists( $Self->{$1} )
                                ? $Self->{$1}
                                : ""
                        }gsex;

		$Self->{templateout}=$tout;
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

  # Optionally set the server/user/directory of the reports

  $Report->setservername("weather.noaa.gov");
  $Report->setusername("anonymous");
  $Report->setpassword('emailaddress@yourdomain.com');
  $Report->setdirectory("/data/observations/metar/stations");

  # Optionally set a template file for generating HTML

  $Report->settemplatefile(/"path/to/template/file.tmpl");

  # Get the report
 
  $Report->getreport('kcvg');		# kcvg is the station code for 
					# Cincinnati, OH

  $Report->getreporthttp('kcvg');	# same as before, but use the http
					# method to the script at 
					# weather.noaa.gov

  # Check for errors

  if ($Report->{error})
  {
    print "$Report->{errortext}\n";
  }

  # If you have the report in a string, you can now just decode it

  my $Obs="2002/02/25 12:00 NSFA 251200Z 00000KT 50KM FEW024 SCT150 27/25 Q1010";
  $Report->decodeobs($Obs);

=head1 DESCRIPTION

  New for version 1.03:  the getreporthttp call now calls the script on the 
  weather.noaa.gov site for those who cant FTP through firewalls.

  This module is an early release of what will hopefully be a robust way
  for Perl Programmers to get current weather data from the National Weather
  Service.  Some new functions have been added since the 0.18 release.  
  Instead of having to use the built-in server/user/password/directory that
  the module used to use, you can provide your own.  This way if you have 
  access to a mirror server of the data, you can specify the servername,
  account information and directory where the files exist.  If you dont have
  access to a mirror, then you dont have to specify anything.  The old server,
  etc., are still automagically selected.

  Also new in this release is that the getreport function now returns an
  error code and the FTP error message if anything goes wrong.  Before this
  was added, if the server was busy or the stations text file was missing
  you couldn't tell what happened.

  Another new feature is the template system.  You can specify a file with the
  settemplatefile function.  This file is read in and all of the places in the
  file where the code sees %%name%% will be replaced with the proper values.  
  An example template has been included.  The template uses the same names as 
  the hashref returned by the getreport function.

  And, same as previous releases, the getreport function retrieves the most 
  current METAR formatted station report and decodes it into a hash that you 
  can use. 

  Some users had reported that they wanted to re-decode the raw
  observations later.  If you store the "obs" value as a string, and you
  want to re-decode it later, you can now use the decodeobs function.

  I thought this would be a useful module, considering that a lot of sites
  today seem to get their weather data directly through other sites via http.
  When the site you are getting your weather data from changes format, then 
  you end up having to re-code your parsing program.  With the weather module,
  all you need is a four-letter station code to get the most recent weather
  observations.  If you do not know what the station code is for your area,
  check the site at http://205.156.54.206/oso/siteloc.shtml to start your 
  search. 

  Since this module uses the NWS METAR Observations, you can get weather
  reports from anywhere in the world that has a four-letter station code.

  This module uses the POSIX and Net::FTP modules, so you'll have to make 
  sure that everything is set up with them before you can use the module. 
  
  To begin:
 
  use Geo::WeatherNWS;
  my $Report=Geo::WeatherNWS::new();

  If you want to change the server and user information, do it now.  This
  step is not required.  If you dont call these functions, the module uses
  the defaults.

  $Report->setservername("weather.noaa.gov");
  $Report->setusername("anonymous");
  $Report->setpassword('emailaddress@yourdomain.com');
  $Report->setdirectory("/data/observations/metar/stations");

  If you want to specify a template file, use this:

  $Report->settemplatefile("/path/to/template/file.tmpl");

  After setting the above, you can get the data.

  $Report->getreport('station');

  Now you can check to see if there was an error, and what the text of the
  error message was.

  if ($Report->{error})
  {
    print "$Report->{errortext}";
  }
  
  If you have the report in a string, you can now just decode it

  my $Obs="2002/02/25 12:00 NSFA 251200Z 00000KT 50KM FEW024 SCT150 27/25 Q1010";
  $Report->decodeobs($Obs);

  Assuming there was no error, you can now use the $Report hashref to display 
  the information.  Some of the returned info is about the report itself, 
  such as:

  $Report->{day}          	  # Report Date
  $Report->{time}         	  # Report Time
  $Report->{station_type}         # Station Type (auto or manual)
  $Report->{obs}          	  # The Observation Text (encoded)
  $Report->{code}         	  # The Station Code

  This is the template output:

  $Report->{templateout}

  These are the returned values specific to the conditions:

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
  for you to do.  You probably don't want to display the windchill unless 
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
  
use Geo::WeatherNWS;

my $Report=Geo::WeatherNWS::new();
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
