-module(maislurp-client-erlang_create_automated_inbox_placement_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_automated_inbox_placement_connection_options/0]).

-type maislurp-client-erlang_create_automated_inbox_placement_connection_options() ::
    #{ 'name' := binary(),
       'provider' := binary(),
       'fromEmail' := binary(),
       'smtp' => maislurp-client-erlang_automated_inbox_placement_smtp_options:maislurp-client-erlang_automated_inbox_placement_smtp_options()
     }.

encode(#{ 'name' := Name,
          'provider' := Provider,
          'fromEmail' := FromEmail,
          'smtp' := Smtp
        }) ->
    #{ 'name' => Name,
       'provider' => Provider,
       'fromEmail' => FromEmail,
       'smtp' => Smtp
     }.
