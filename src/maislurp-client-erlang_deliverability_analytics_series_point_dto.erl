-module(maislurp-client-erlang_deliverability_analytics_series_point_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_analytics_series_point_dto/0]).

-type maislurp-client-erlang_deliverability_analytics_series_point_dto() ::
    #{ 'bucketStart' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bucketEnd' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'metrics' := maislurp-client-erlang_deliverability_analytics_summary_dto:maislurp-client-erlang_deliverability_analytics_summary_dto()
     }.

encode(#{ 'bucketStart' := BucketStart,
          'bucketEnd' := BucketEnd,
          'metrics' := Metrics
        }) ->
    #{ 'bucketStart' => BucketStart,
       'bucketEnd' => BucketEnd,
       'metrics' => Metrics
     }.
