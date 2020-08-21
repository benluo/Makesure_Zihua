#!/usr/bin/perl

# Covernt oneline multi characters file into multi lines single character, the input file has to be only one line
# Also plus "B0000:" to one column

# Input file:    ../TXT/ORIGIN-B.txt
# Output file:   ../TXT/B-index.csv

use Encode;
use Encode qw(encode decode);


use utf8;
use open ":std", ":encoding(UTF-8)";

my $input_file = "../TXT/ORIGIN-B.txt";

open (INPUT_FILE, '<', $input_file);
while (<INPUT_FILE>) {
    $temp=$_;
    $temp =~ s/\r|\n//g;

}


close (INPUT_FILE);

# print $temp;

@output_chars=split(undef, $temp);



$i=1;
foreach (@output_chars) {
    print "B0";


    if ($i<1000) {
        print "0";
    }

    if ($i<100) {
        print "0";
    }
    if ($i<10) {
       print "0";
    }
        
    print $i.":".$_;
    print "\n";
    $i++;
}

