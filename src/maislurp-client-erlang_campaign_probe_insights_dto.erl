-module(maislurp-client-erlang_campaign_probe_insights_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_insights_dto/0]).

-type maislurp-client-erlang_campaign_probe_insights_dto() ::
    #{ 'probeId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'totalRuns' := integer(),
       'healthyRuns' := integer(),
       'warningRuns' := integer(),
       'failedRuns' := integer(),
       'successRate' := float(),
       'averageHealthScore' := float(),
       'currentHealthyStreak' := integer(),
       'bestHealthyStreak' := integer(),
       'goodPerformanceSignals' := list(),
       'attentionSignals' := list(),
       'topFindings' := list(),
       'latestRun' => maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto()
     }.

encode(#{ 'probeId' := ProbeId,
          'since' := Since,
          'before' := Before,
          'totalRuns' := TotalRuns,
          'healthyRuns' := HealthyRuns,
          'warningRuns' := WarningRuns,
          'failedRuns' := FailedRuns,
          'successRate' := SuccessRate,
          'averageHealthScore' := AverageHealthScore,
          'currentHealthyStreak' := CurrentHealthyStreak,
          'bestHealthyStreak' := BestHealthyStreak,
          'goodPerformanceSignals' := GoodPerformanceSignals,
          'attentionSignals' := AttentionSignals,
          'topFindings' := TopFindings,
          'latestRun' := LatestRun
        }) ->
    #{ 'probeId' => ProbeId,
       'since' => Since,
       'before' => Before,
       'totalRuns' => TotalRuns,
       'healthyRuns' => HealthyRuns,
       'warningRuns' => WarningRuns,
       'failedRuns' => FailedRuns,
       'successRate' => SuccessRate,
       'averageHealthScore' => AverageHealthScore,
       'currentHealthyStreak' => CurrentHealthyStreak,
       'bestHealthyStreak' => BestHealthyStreak,
       'goodPerformanceSignals' => GoodPerformanceSignals,
       'attentionSignals' => AttentionSignals,
       'topFindings' => TopFindings,
       'latestRun' => LatestRun
     }.
