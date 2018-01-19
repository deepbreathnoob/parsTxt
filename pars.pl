#!/usr/bin/perl
use strict;
use Data::Dumper;

my @test = parsFileTo('log.txt');
print Dumper(\@test);


sub parsFileTo(){
    my @result;
    my ($file) = @_;
    my %hash;


    #open file

    open(my $fh, "<", $file) or die "cannot open < $file: $!";
    


    my $lines = 0;
    my @tmp;
    my $fcount;

    while( my $line  = <$fh>){
        chop($line);
        $lines = $lines+1;
        @tmp = split(' ', $line);
        $fcount = 0;

        #$result{$lines} = [ @tmp[-1] ];
        %hash = (
            @tmp[0] => @tmp[-1],
            @tmp[1] => @tmp[-1],
            @tmp[2] => @tmp[-1],
            @tmp[3] => @tmp[-1],
            @tmp[4] => @tmp[-1],
            @tmp[5] => @tmp[-1]
        );
        print Dumper(\%hash);
        push @result, \%hash;
        #foreach $a (@tmp) {

            #$result{$lines}[$fcount] = @tmp[$a];
        #    $fcount++;
            #print "$a "

        #}
        #print "\n";
        
        #print "$line\n";
    }

    return @result;
}

#my %loadex = parsFileTo('log.txt');

#{
#    
#   2 => []
#   {}
#
#}