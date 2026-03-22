-module(maislurp-client-erlang_conditional_structured_content_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_conditional_structured_content_result/0]).

-type maislurp-client-erlang_conditional_structured_content_result() ::
    #{ 'result' => maps:map(),
       'conditionsMatch' := boolean(),
       'tokenCount' => integer()
     }.

encode(#{ 'result' := Result,
          'conditionsMatch' := ConditionsMatch,
          'tokenCount' := TokenCount
        }) ->
    #{ 'result' => Result,
       'conditionsMatch' => ConditionsMatch,
       'tokenCount' => TokenCount
     }.
