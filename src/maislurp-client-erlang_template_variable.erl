-module(maislurp-client-erlang_template_variable).

-export([encode/1]).

-export_type([maislurp-client-erlang_template_variable/0]).

-type maislurp-client-erlang_template_variable() ::
    #{ 'name' => binary(),
       'variableType' => binary()
     }.

encode(#{ 'name' := Name,
          'variableType' := VariableType
        }) ->
    #{ 'name' => Name,
       'variableType' => VariableType
     }.
