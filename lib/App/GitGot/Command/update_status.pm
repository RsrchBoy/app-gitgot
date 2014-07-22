package App::GitGot::Command::update_status;
# ABSTRACT: update managed repositories then display their status

use Moo;
extends 'App::GitGot::Command';
use 5.010;

sub command_names { qw/ update_status upst / }

sub _execute {
  my ( $self, $opt, $args ) = @_;

  say "UPDATE";
  $self->_update( $self->active_repos );

  say "\nSTATUS";
  $self->_status( $self->active_repos );
}

__PACKAGE__->meta->make_immutable;
1;
