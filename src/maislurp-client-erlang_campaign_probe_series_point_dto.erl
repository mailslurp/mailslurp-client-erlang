-module(maislurp-client-erlang_campaign_probe_series_point_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_series_point_dto/0]).

-type maislurp-client-erlang_campaign_probe_series_point_dto() ::
    #{ 'bucketStart' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'runCount' := integer(),
       'healthyCount' := integer(),
       'warningCount' := integer(),
       'failedCount' := integer(),
       'healthyRate' := float(),
       'averageHealthScore' := float()
     }.

encode(#{ 'bucketStart' := BucketStart,
          'runCount' := RunCount,
          'healthyCount' := HealthyCount,
          'warningCount' := WarningCount,
          'failedCount' := FailedCount,
          'healthyRate' := HealthyRate,
          'averageHealthScore' := AverageHealthScore
        }) ->
    #{ 'bucketStart' => BucketStart,
       'runCount' => RunCount,
       'healthyCount' => HealthyCount,
       'warningCount' => WarningCount,
       'failedCount' => FailedCount,
       'healthyRate' => HealthyRate,
       'averageHealthScore' => AverageHealthScore
     }.
