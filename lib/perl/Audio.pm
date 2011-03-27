#!/usr/bin/perl
package Audio;

BEGIN {
    use File::Basename;
    use lib dirname(__FILE__);  
}

use Audio::MP3;
use Audio::M4A;

use Switch;
use Carp;

sub file {
    my ($class, $path) = @_;
    my $this;
    if ($path =~ /\.(.*)$/) {
        my $ext = $1;
        switch ($ext) {
            case /mp3/i { $this = Audio::MP3->file($path) }
            case /m4a/i { $this = Audio::M4A->file($path) }
        }            
        return $this if defined $this;
    }

    croak "Audio file at \"$path\" is an unsupported filetype";
    undef;
}

1;
