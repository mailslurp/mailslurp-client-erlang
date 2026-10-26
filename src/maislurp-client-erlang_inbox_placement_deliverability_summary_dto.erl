-module(maislurp-client-erlang_inbox_placement_deliverability_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_deliverability_summary_dto/0]).

-type maislurp-client-erlang_inbox_placement_deliverability_summary_dto() ::
    #{ 'totalTargets' := integer(),
       'matchedTargets' := integer(),
       'inboxTargets' := integer(),
       'spamTargets' := integer(),
       'notReceivedTargets' := integer()
     }.

encode(#{ 'totalTargets' := TotalTargets,
          'matchedTargets' := MatchedTargets,
          'inboxTargets' := InboxTargets,
          'spamTargets' := SpamTargets,
          'notReceivedTargets' := NotReceivedTargets
        }) ->
    #{ 'totalTargets' => TotalTargets,
       'matchedTargets' => MatchedTargets,
       'inboxTargets' => InboxTargets,
       'spamTargets' => SpamTargets,
       'notReceivedTargets' => NotReceivedTargets
     }.
