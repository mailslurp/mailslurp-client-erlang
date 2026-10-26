-module(maislurp-client-erlang_deliverability_analytics_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_analytics_summary_dto/0]).

-type maislurp-client-erlang_deliverability_analytics_summary_dto() ::
    #{ 'totalRuns' := integer(),
       'completeRuns' := integer(),
       'failedRuns' := integer(),
       'stoppedRuns' := integer(),
       'runningRuns' := integer(),
       'scheduledRuns' := integer(),
       'pausedRuns' := integer(),
       'createdRuns' := integer(),
       'thresholdConfiguredRuns' := integer(),
       'thresholdMetRuns' := integer(),
       'averageCompletionPercentage' := float(),
       'averageMatchedEntities' := float(),
       'averageUnmatchedEntities' := float()
     }.

encode(#{ 'totalRuns' := TotalRuns,
          'completeRuns' := CompleteRuns,
          'failedRuns' := FailedRuns,
          'stoppedRuns' := StoppedRuns,
          'runningRuns' := RunningRuns,
          'scheduledRuns' := ScheduledRuns,
          'pausedRuns' := PausedRuns,
          'createdRuns' := CreatedRuns,
          'thresholdConfiguredRuns' := ThresholdConfiguredRuns,
          'thresholdMetRuns' := ThresholdMetRuns,
          'averageCompletionPercentage' := AverageCompletionPercentage,
          'averageMatchedEntities' := AverageMatchedEntities,
          'averageUnmatchedEntities' := AverageUnmatchedEntities
        }) ->
    #{ 'totalRuns' => TotalRuns,
       'completeRuns' => CompleteRuns,
       'failedRuns' => FailedRuns,
       'stoppedRuns' => StoppedRuns,
       'runningRuns' => RunningRuns,
       'scheduledRuns' => ScheduledRuns,
       'pausedRuns' => PausedRuns,
       'createdRuns' => CreatedRuns,
       'thresholdConfiguredRuns' => ThresholdConfiguredRuns,
       'thresholdMetRuns' => ThresholdMetRuns,
       'averageCompletionPercentage' => AverageCompletionPercentage,
       'averageMatchedEntities' => AverageMatchedEntities,
       'averageUnmatchedEntities' => AverageUnmatchedEntities
     }.
