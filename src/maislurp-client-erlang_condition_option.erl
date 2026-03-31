-module(maislurp-client-erlang_condition_option).

-export([encode/1]).

-export_type([maislurp-client-erlang_condition_option/0]).

-type maislurp-client-erlang_condition_option() ::
    #{ 'condition' := binary(),
       'value' := binary()
     }.

encode(#{ 'condition' := Condition,
          'value' := Value
        }) ->
    #{ 'condition' => Condition,
       'value' => Value
     }.
