#!/usr/bin/perl
# Test the Timetable module
# James Stanley 2012

use Timetable qw/ical_for_url/;

use strict;
use warnings;

my @start = (2011, 9, 26);
my $ical = ical_for_url( \@start, 'http://timetables.bath.ac.uk:4090/reporting/individual?identifier=Second+year+Computer+Science&weeks=1-15&submit2=View+Computer+Science+Timetable&idtype=name&objectclass=programme%2Bof%2Bstudy%2Bgroups&days=1-5&width=100&height=0' );

print $ical->as_string;
