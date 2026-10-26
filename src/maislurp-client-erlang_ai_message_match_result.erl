-module(maislurp-client-erlang_ai_message_match_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_match_result/0]).

-type maislurp-client-erlang_ai_message_match_result() ::
    #{ 'status' := binary(),
       'reason' := binary(),
       'evidence' := list(),
       'confidence' => maislurp-client-erlang_a_i_message_confidence:maislurp-client-erlang_a_i_message_confidence()
     }.

encode(#{ 'status' := Status,
          'reason' := Reason,
          'evidence' := Evidence,
          'confidence' := Confidence
        }) ->
    #{ 'status' => Status,
       'reason' => Reason,
       'evidence' => Evidence,
       'confidence' => Confidence
     }.
