#! /usr/bin/perl
use strict;
use warnings;

my $interval = shift || die "Add interval time of script";

while (1) {
    my $output = `tasklist /fo csv /nh`;
    my @lines = split /\n/, $output;
    my %processes;

    foreach my $line (@lines) {
        chomp $line;
        my @fields = split /,/, $line;
        my $process_name = $fields[0];
        $process_name =~ s/"//g;
        my $mem_usage = $fields[4];
        $processes{$process_name} = $mem_usage;
    }

    open(my $fh,"<","KillList.txt") || die "reading error of KillList.txt are you sure is it in the same folder?";
      while(<$fh>){
            chomp $_;
            foreach my $process_name (keys %processes) {
                if($process_name eq $_){
                    system("taskkill /F /IM $_");
                }
            }
      }
    close($fh);

    sleep $interval;
}