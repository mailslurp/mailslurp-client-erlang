-module(maislurp-client-erlang_inbox_placement_analytics_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analytics_summary_dto/0]).

-type maislurp-client-erlang_inbox_placement_analytics_summary_dto() ::
    #{ 'totalRuns' := integer(),
       'completedRuns' := integer(),
       'activeRuns' := integer(),
       'failedRuns' := integer(),
       'totalTargets' := integer(),
       'matchedTargets' := integer(),
       'deliveredTargets' := integer(),
       'inboxTargets' := integer(),
       'spamTargets' := integer(),
       'promotionTargets' := integer(),
       'socialTargets' := integer(),
       'updateTargets' := integer(),
       'forumTargets' := integer(),
       'otherFolderTargets' := integer(),
       'notReceivedTargets' := integer(),
       'averageDeliveredRatePercentage' := float(),
       'averageInboxRatePercentage' := float(),
       'averageSpamRatePercentage' := float(),
       'averagePromotionRatePercentage' := float(),
       'averageNotReceivedRatePercentage' := float()
     }.

encode(#{ 'totalRuns' := TotalRuns,
          'completedRuns' := CompletedRuns,
          'activeRuns' := ActiveRuns,
          'failedRuns' := FailedRuns,
          'totalTargets' := TotalTargets,
          'matchedTargets' := MatchedTargets,
          'deliveredTargets' := DeliveredTargets,
          'inboxTargets' := InboxTargets,
          'spamTargets' := SpamTargets,
          'promotionTargets' := PromotionTargets,
          'socialTargets' := SocialTargets,
          'updateTargets' := UpdateTargets,
          'forumTargets' := ForumTargets,
          'otherFolderTargets' := OtherFolderTargets,
          'notReceivedTargets' := NotReceivedTargets,
          'averageDeliveredRatePercentage' := AverageDeliveredRatePercentage,
          'averageInboxRatePercentage' := AverageInboxRatePercentage,
          'averageSpamRatePercentage' := AverageSpamRatePercentage,
          'averagePromotionRatePercentage' := AveragePromotionRatePercentage,
          'averageNotReceivedRatePercentage' := AverageNotReceivedRatePercentage
        }) ->
    #{ 'totalRuns' => TotalRuns,
       'completedRuns' => CompletedRuns,
       'activeRuns' => ActiveRuns,
       'failedRuns' => FailedRuns,
       'totalTargets' => TotalTargets,
       'matchedTargets' => MatchedTargets,
       'deliveredTargets' => DeliveredTargets,
       'inboxTargets' => InboxTargets,
       'spamTargets' => SpamTargets,
       'promotionTargets' => PromotionTargets,
       'socialTargets' => SocialTargets,
       'updateTargets' => UpdateTargets,
       'forumTargets' => ForumTargets,
       'otherFolderTargets' => OtherFolderTargets,
       'notReceivedTargets' => NotReceivedTargets,
       'averageDeliveredRatePercentage' => AverageDeliveredRatePercentage,
       'averageInboxRatePercentage' => AverageInboxRatePercentage,
       'averageSpamRatePercentage' => AverageSpamRatePercentage,
       'averagePromotionRatePercentage' => AveragePromotionRatePercentage,
       'averageNotReceivedRatePercentage' => AverageNotReceivedRatePercentage
     }.
