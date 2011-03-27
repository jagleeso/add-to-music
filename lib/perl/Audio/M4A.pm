#!/usr/bin/perl
package Audio::M4A;
use MP4::Info;

sub file {
    my ($class, $path) = @_;
    my $impl = new MP4::Info $path;
    bless {
        impl => $impl,
    }, $class;
}

sub artist {
    my ($this) = @_;
    $this->impl->artist;
}

sub album {
    my ($this) = @_;
    $this->impl->album;
}

sub impl {
    my ($this) = @_;
    $this->{impl};
}

1;
