#!/usr/bin/perl
package Audio::MP3;
use MP3::Tag;

sub file {
    my ($class, $path) = @_;
    my $impl = MP3::Tag->new($path);
    my $info = $impl->autoinfo();
    bless {
        impl => $impl,
        info => $info,
    }, $class;
}

sub artist {
    my ($this) = @_;
    $this->info->{artist};
}

sub album {
    my ($this) = @_;
    $this->info->{album};
}

sub info {
    my ($this) = @_;
    $this->{info};
}

sub impl {
    my ($this) = @_;
    $this->{impl};
}

1;
