#!/bin/bash
awk 'BEGIN{print "      list of configurations";
print "____________________________________";
print "user   | processor   | graphics";
w=0
u=0}
{if ($1 == "Danil" || $1 == "Lena" || $1 == "Kolya")
{print $1 "\t " $3 "\t \t" $4;}
if ($2 == "Windows") w++;
else if ($2 == "Ubuntu") u++;
}END{
print "\n";
if (w > u) print "Most of users use Windows ( " w " of " NR " )" ;
else print "Most of users use Ubuntu ( " u " of " NR " )";
}' lab20.txt
