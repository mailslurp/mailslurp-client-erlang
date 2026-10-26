-module(maislurp-client-erlang_ai_message_confidence).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_confidence/0]).

-type maislurp-client-erlang_ai_message_confidence() ::
    #{ 'score' := float(),
       'method' := binary(),
       'calibrated' := boolean()
     }.

encode(#{ 'score' := Score,
          'method' := Method,
          'calibrated' := Calibrated
        }) ->
    #{ 'score' => Score,
       'method' => Method,
       'calibrated' => Calibrated
     }.
