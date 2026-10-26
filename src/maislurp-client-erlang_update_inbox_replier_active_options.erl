-module(maislurp-client-erlang_update_inbox_replier_active_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_inbox_replier_active_options/0]).

-type maislurp-client-erlang_update_inbox_replier_active_options() ::
    #{ 'active' := boolean()
     }.

encode(#{ 'active' := Active
        }) ->
    #{ 'active' => Active
     }.
