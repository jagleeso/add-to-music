#!/usr/bin/perl
package Audio::OGG;
use Ogg::Vorbis::Header;

sub file {
    my ($class, $path) = @_;
    my $impl = Ogg::Vorbis::Header->new($path);
    bless {
        impl => $impl,
    }, $class;
}

sub artist {
    my ($this) = @_;
    $this->impl->comment('ARTIST');
}

sub album {
    my ($this) = @_;
    $this->impl->comment('ALBUM');
}

sub impl {
    my ($this) = @_;
    $this->{impl};
}

1;
