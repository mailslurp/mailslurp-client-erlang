-module(maislurp-client-erlang_assert_ai_message_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_assert_ai_message_options/0]).

-type maislurp-client-erlang_assert_ai_message_options() ::
    #{ 'message' := maislurp-client-erlang_a_i_message_reference:maislurp-client-erlang_a_i_message_reference(),
       'assertions' := list(),
       'timeout' := integer(),
       'aiOptions' := maislurp-client-erlang_a_i_message_ai_options:maislurp-client-erlang_a_i_message_ai_options()
     }.

encode(#{ 'message' := Message,
          'assertions' := Assertions,
          'timeout' := Timeout,
          'aiOptions' := AiOptions
        }) ->
    #{ 'message' => Message,
       'assertions' => Assertions,
       'timeout' => Timeout,
       'aiOptions' => AiOptions
     }.
