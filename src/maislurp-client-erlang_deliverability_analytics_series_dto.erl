-module(maislurp-client-erlang_deliverability_analytics_series_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_analytics_series_dto/0]).

-type maislurp-client-erlang_deliverability_analytics_series_dto() ::
    #{ 'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'scope' => binary(),
       'bucket' := binary(),
       'summary' := maislurp-client-erlang_deliverability_analytics_summary_dto:maislurp-client-erlang_deliverability_analytics_summary_dto(),
       'runs' := list(),
       'points' := list()
     }.

encode(#{ 'since' := Since,
          'before' := Before,
          'scope' := Scope,
          'bucket' := Bucket,
          'summary' := Summary,
          'runs' := Runs,
          'points' := Points
        }) ->
    #{ 'since' => Since,
       'before' => Before,
       'scope' => Scope,
       'bucket' => Bucket,
       'summary' => Summary,
       'runs' => Runs,
       'points' => Points
     }.
