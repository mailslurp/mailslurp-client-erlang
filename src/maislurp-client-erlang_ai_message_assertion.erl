-module(maislurp-client-erlang_ai_message_assertion).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_assertion/0]).

-type maislurp-client-erlang_ai_message_assertion() ::
    #{ 'id' := binary(),
       'prompt' := binary()
     }.

encode(#{ 'id' := Id,
          'prompt' := Prompt
        }) ->
    #{ 'id' => Id,
       'prompt' => Prompt
     }.
