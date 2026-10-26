-module(maislurp-client-erlang_deliverability_analytics_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_analytics_run_dto/0]).

-type maislurp-client-erlang_deliverability_analytics_run_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'scope' := binary(),
       'status' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'startAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'totalEntities' := integer(),
       'matchedEntities' := integer(),
       'unmatchedEntities' := integer(),
       'completionPercentage' := float(),
       'successThresholdPercent' => float(),
       'thresholdStatus' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'scope' := Scope,
          'status' := Status,
          'createdAt' := CreatedAt,
          'startAt' := StartAt,
          'completedAt' := CompletedAt,
          'totalEntities' := TotalEntities,
          'matchedEntities' := MatchedEntities,
          'unmatchedEntities' := UnmatchedEntities,
          'completionPercentage' := CompletionPercentage,
          'successThresholdPercent' := SuccessThresholdPercent,
          'thresholdStatus' := ThresholdStatus
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'scope' => Scope,
       'status' => Status,
       'createdAt' => CreatedAt,
       'startAt' => StartAt,
       'completedAt' => CompletedAt,
       'totalEntities' => TotalEntities,
       'matchedEntities' => MatchedEntities,
       'unmatchedEntities' => UnmatchedEntities,
       'completionPercentage' => CompletionPercentage,
       'successThresholdPercent' => SuccessThresholdPercent,
       'thresholdStatus' => ThresholdStatus
     }.
