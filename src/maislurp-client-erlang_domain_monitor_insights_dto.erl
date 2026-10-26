-module(maislurp-client-erlang_domain_monitor_insights_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_insights_dto/0]).

-type maislurp-client-erlang_domain_monitor_insights_dto() ::
    #{ 'monitorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'totalRuns' := integer(),
       'healthyRuns' := integer(),
       'degradedRuns' := integer(),
       'criticalRuns' := integer(),
       'failedRuns' := integer(),
       'successRate' := float(),
       'averageHealthScore' := float(),
       'currentHealthyStreak' := integer(),
       'bestHealthyStreak' := integer(),
       'goodPerformanceSignals' := list(),
       'attentionSignals' := list(),
       'topFindings' := list(),
       'latestRun' => maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto()
     }.

encode(#{ 'monitorId' := MonitorId,
          'since' := Since,
          'before' := Before,
          'totalRuns' := TotalRuns,
          'healthyRuns' := HealthyRuns,
          'degradedRuns' := DegradedRuns,
          'criticalRuns' := CriticalRuns,
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
    #{ 'monitorId' => MonitorId,
       'since' => Since,
       'before' => Before,
       'totalRuns' => TotalRuns,
       'healthyRuns' => HealthyRuns,
       'degradedRuns' => DegradedRuns,
       'criticalRuns' => CriticalRuns,
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
