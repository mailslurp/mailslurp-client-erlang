-module(maislurp-client-erlang_inbox_placement_provider_breakdown_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_breakdown_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_breakdown_dto() ::
    #{ 'provider' := binary(),
       'totalTargets' := integer(),
       'deliveredTargets' := integer(),
       'inboxTargets' := integer(),
       'spamTargets' := integer(),
       'notReceivedTargets' := integer(),
       'deliveredRatePercentage' := float(),
       'inboxRatePercentage' := float(),
       'spamRatePercentage' := float(),
       'notReceivedRatePercentage' := float()
     }.

encode(#{ 'provider' := Provider,
          'totalTargets' := TotalTargets,
          'deliveredTargets' := DeliveredTargets,
          'inboxTargets' := InboxTargets,
          'spamTargets' := SpamTargets,
          'notReceivedTargets' := NotReceivedTargets,
          'deliveredRatePercentage' := DeliveredRatePercentage,
          'inboxRatePercentage' := InboxRatePercentage,
          'spamRatePercentage' := SpamRatePercentage,
          'notReceivedRatePercentage' := NotReceivedRatePercentage
        }) ->
    #{ 'provider' => Provider,
       'totalTargets' => TotalTargets,
       'deliveredTargets' => DeliveredTargets,
       'inboxTargets' => InboxTargets,
       'spamTargets' => SpamTargets,
       'notReceivedTargets' => NotReceivedTargets,
       'deliveredRatePercentage' => DeliveredRatePercentage,
       'inboxRatePercentage' => InboxRatePercentage,
       'spamRatePercentage' => SpamRatePercentage,
       'notReceivedRatePercentage' => NotReceivedRatePercentage
     }.
