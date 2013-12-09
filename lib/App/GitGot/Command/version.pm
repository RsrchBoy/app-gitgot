package App::GitGot::Command::version;
# ABSTRACT: display application version

use Moose;
extends 'App::GitGot::Command';
use 5.010;

sub _execute { say $App::GitGot::VERSION }

__PACKAGE__->meta->make_immutable;
1;
