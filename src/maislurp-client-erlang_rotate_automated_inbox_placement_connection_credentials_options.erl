-module(maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options/0]).

-type maislurp-client-erlang_rotate_automated_inbox_placement_connection_credentials_options() ::
    #{ 'smtp' := maislurp-client-erlang_automated_inbox_placement_smtp_options:maislurp-client-erlang_automated_inbox_placement_smtp_options()
     }.

encode(#{ 'smtp' := Smtp
        }) ->
    #{ 'smtp' => Smtp
     }.
