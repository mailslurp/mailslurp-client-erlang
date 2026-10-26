-module(maislurp-client-erlang_update_ruleset_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_ruleset_options/0]).

-type maislurp-client-erlang_update_ruleset_options() ::
    #{ 'active' := boolean()
     }.

encode(#{ 'active' := Active
        }) ->
    #{ 'active' => Active
     }.
