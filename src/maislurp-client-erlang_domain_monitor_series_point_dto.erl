-module(maislurp-client-erlang_domain_monitor_series_point_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_series_point_dto/0]).

-type maislurp-client-erlang_domain_monitor_series_point_dto() ::
    #{ 'bucketStart' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'runCount' := integer(),
       'healthyCount' := integer(),
       'degradedCount' := integer(),
       'criticalCount' := integer(),
       'failedCount' := integer(),
       'healthyRate' := float(),
       'averageHealthScore' := float()
     }.

encode(#{ 'bucketStart' := BucketStart,
          'runCount' := RunCount,
          'healthyCount' := HealthyCount,
          'degradedCount' := DegradedCount,
          'criticalCount' := CriticalCount,
          'failedCount' := FailedCount,
          'healthyRate' := HealthyRate,
          'averageHealthScore' := AverageHealthScore
        }) ->
    #{ 'bucketStart' => BucketStart,
       'runCount' => RunCount,
       'healthyCount' => HealthyCount,
       'degradedCount' => DegradedCount,
       'criticalCount' => CriticalCount,
       'failedCount' => FailedCount,
       'healthyRate' => HealthyRate,
       'averageHealthScore' => AverageHealthScore
     }.
