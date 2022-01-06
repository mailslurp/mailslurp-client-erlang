-module(maislurp-client-erlang_create_inbox_ruleset_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_ruleset_options/0]).

-type maislurp-client-erlang_create_inbox_ruleset_options() ::
    #{ 'scope' => binary(),
       'action' => binary(),
       'target' => binary()
     }.

encode(#{ 'scope' := Scope,
          'action' := Action,
          'target' := Target
        }) ->
    #{ 'scope' => Scope,
       'action' => Action,
       'target' => Target
     }.
