-module(maislurp-client-erlang_conditional_structured_content_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_conditional_structured_content_result/0]).

-type maislurp-client-erlang_conditional_structured_content_result() ::
    #{ 'result' => maps:map(),
       'conditionsMatch' := boolean()
     }.

encode(#{ 'result' := Result,
          'conditionsMatch' := ConditionsMatch
        }) ->
    #{ 'result' => Result,
       'conditionsMatch' => ConditionsMatch
     }.
