-module(maislurp-client-erlang_inbox_placement_spam_score_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_spam_score_dto/0]).

-type maislurp-client-erlang_inbox_placement_spam_score_dto() ::
    #{ 'segment' => binary(),
       'spamScoreOutOfTen' := float(),
       'spamScoreVariant' := binary()
     }.

encode(#{ 'segment' := Segment,
          'spamScoreOutOfTen' := SpamScoreOutOfTen,
          'spamScoreVariant' := SpamScoreVariant
        }) ->
    #{ 'segment' => Segment,
       'spamScoreOutOfTen' => SpamScoreOutOfTen,
       'spamScoreVariant' => SpamScoreVariant
     }.
