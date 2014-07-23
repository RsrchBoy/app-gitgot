package App::GitGot::Command::milk;

# ABSTRACT: is the cow happy?

use Mouse;
extends 'App::GitGot::Command';
use 5.010;

use autobox::Core;

sub _execute {
  my( $self, $opt, $args ) = @_;

  my $text       = '< Now with ' . $self->full_repo_list->length . ' repos! >';
  my $border_len = $text->length - 2;
  my $upper      = q{ } . '_'x$border_len;
  my $lower      = q{ } . '-'x$border_len;

  say for $upper, $text, $lower, do { local $\; [<DATA>] }->join(q{});

  return;
}

__PACKAGE__->meta->make_immutable;
1;
__DATA__
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
