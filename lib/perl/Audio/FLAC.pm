#!/usr/bin/perl
package Audio::FLAC;
use Audio::FLAC::Header;

sub file {
    my ($class, $path) = @_;
    my $impl = Audio::FLAC::Header->new($path);
    my $info = $impl->tags();
    bless {
        impl => $impl,
        info => $info,
    }, $class;
}

sub artist {
    my ($this) = @_;
    $this->info->{ARTIST};
}

sub album {
    my ($this) = @_;
    $this->info->{ALBUM};
}

sub info {
    my ($this) = @_;
    $this->{info};
}

sub impl {
    my ($this) = @_;
    $this->{impl};
}

1
