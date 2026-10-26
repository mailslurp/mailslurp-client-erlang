-module(maislurp-client-erlang_ai_message_evidence).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_evidence/0]).

-type maislurp-client-erlang_ai_message_evidence() ::
    #{ 'field' := binary(),
       'text' := binary()
     }.

encode(#{ 'field' := Field,
          'text' := Text
        }) ->
    #{ 'field' => Field,
       'text' => Text
     }.
