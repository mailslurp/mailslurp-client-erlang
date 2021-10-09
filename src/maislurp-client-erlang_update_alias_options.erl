-module(maislurp-client-erlang_update_alias_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_alias_options/0]).

-type maislurp-client-erlang_update_alias_options() ::
    #{ 'name' => binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
