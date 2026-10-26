-module(maislurp-client-erlang_sms_match_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_match_options/0]).

-type maislurp-client-erlang_sms_match_options() ::
    #{ 'matches' => list(),
       'ai' => maislurp-client-erlang_a_i_message_match_options:maislurp-client-erlang_a_i_message_match_options()
     }.

encode(#{ 'matches' := Matches,
          'ai' := Ai
        }) ->
    #{ 'matches' => Matches,
       'ai' => Ai
     }.
