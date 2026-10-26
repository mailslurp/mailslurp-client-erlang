-module(maislurp-client-erlang_ai_message_match_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_match_options/0]).

-type maislurp-client-erlang_ai_message_match_options() ::
    #{ 'prompt' := binary(),
       'aiOptions' := maislurp-client-erlang_a_i_message_ai_options:maislurp-client-erlang_a_i_message_ai_options()
     }.

encode(#{ 'prompt' := Prompt,
          'aiOptions' := AiOptions
        }) ->
    #{ 'prompt' => Prompt,
       'aiOptions' => AiOptions
     }.
