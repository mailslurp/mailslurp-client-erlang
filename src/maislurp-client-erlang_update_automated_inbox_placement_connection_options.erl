-module(maislurp-client-erlang_update_automated_inbox_placement_connection_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_automated_inbox_placement_connection_options/0]).

-type maislurp-client-erlang_update_automated_inbox_placement_connection_options() ::
    #{ 'name' => binary(),
       'fromEmail' => binary()
     }.

encode(#{ 'name' := Name,
          'fromEmail' := FromEmail
        }) ->
    #{ 'name' => Name,
       'fromEmail' => FromEmail
     }.
