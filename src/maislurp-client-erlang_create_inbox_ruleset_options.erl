-module(maislurp-client-erlang_create_inbox_ruleset_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_ruleset_options/0]).

-type maislurp-client-erlang_create_inbox_ruleset_options() ::
    #{ 'action' => binary(),
       'scope' => binary(),
       'target' => binary()
     }.

encode(#{ 'action' := Action,
          'scope' := Scope,
          'target' := Target
        }) ->
    #{ 'action' => Action,
       'scope' => Scope,
       'target' => Target
     }.
