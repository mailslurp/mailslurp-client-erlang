-module(maislurp-client-erlang_ai_message_assertion_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_assertion_result/0]).

-type maislurp-client-erlang_ai_message_assertion_result() ::
    #{ 'id' := binary(),
       'status' := binary(),
       'reason' := binary(),
       'evidence' := list(),
       'confidence' => maislurp-client-erlang_a_i_message_confidence:maislurp-client-erlang_a_i_message_confidence()
     }.

encode(#{ 'id' := Id,
          'status' := Status,
          'reason' := Reason,
          'evidence' := Evidence,
          'confidence' := Confidence
        }) ->
    #{ 'id' => Id,
       'status' => Status,
       'reason' => Reason,
       'evidence' => Evidence,
       'confidence' => Confidence
     }.
