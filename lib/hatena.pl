#!/usr/bin/env perl
use strict;
use warnings;
use Text::Hatena;
# use File::Slurp;

# my $filename = shift or die "usage: $0 [hatena style text file name]\n";
# my $text = read_file($filename);
my $text = shift or die "usage: $0 [hatena style text file name]\n";
my $html = Text::Hatena->parse($text);
$html =~ s#</?div.*?>.*?\n##gi;
print $html;
