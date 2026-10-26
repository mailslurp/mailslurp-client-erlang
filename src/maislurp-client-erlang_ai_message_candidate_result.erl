-module(maislurp-client-erlang_ai_message_candidate_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_candidate_result/0]).

-type maislurp-client-erlang_ai_message_candidate_result() ::
    #{ 'message' := maislurp-client-erlang_a_i_message_reference:maislurp-client-erlang_a_i_message_reference(),
       'match' := maislurp-client-erlang_a_i_message_match_result:maislurp-client-erlang_a_i_message_match_result()
     }.

encode(#{ 'message' := Message,
          'match' := Match
        }) ->
    #{ 'message' => Message,
       'match' => Match
     }.
