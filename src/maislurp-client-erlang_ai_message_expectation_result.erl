-module(maislurp-client-erlang_ai_message_expectation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_expectation_result/0]).

-type maislurp-client-erlang_ai_message_expectation_result() ::
    #{ 'id' := binary(),
       'result' := maislurp-client-erlang_a_i_message_result:maislurp-client-erlang_a_i_message_result()
     }.

encode(#{ 'id' := Id,
          'result' := Result
        }) ->
    #{ 'id' => Id,
       'result' => Result
     }.
