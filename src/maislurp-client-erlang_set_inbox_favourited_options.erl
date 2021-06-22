-module(maislurp-client-erlang_set_inbox_favourited_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_set_inbox_favourited_options/0]).

-type maislurp-client-erlang_set_inbox_favourited_options() ::
    #{ 'state' => boolean()
     }.

encode(#{ 'state' := State
        }) ->
    #{ 'state' => State
     }.
