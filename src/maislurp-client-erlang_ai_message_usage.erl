-module(maislurp-client-erlang_ai_message_usage).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_usage/0]).

-type maislurp-client-erlang_ai_message_usage() ::
    #{ 'tokens' := integer(),
       'candidatesEvaluated' := integer(),
       'complete' := boolean(),
       'reservedTokens' := integer()
     }.

encode(#{ 'tokens' := Tokens,
          'candidatesEvaluated' := CandidatesEvaluated,
          'complete' := Complete,
          'reservedTokens' := ReservedTokens
        }) ->
    #{ 'tokens' => Tokens,
       'candidatesEvaluated' => CandidatesEvaluated,
       'complete' => Complete,
       'reservedTokens' => ReservedTokens
     }.
