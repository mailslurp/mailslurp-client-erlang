-module(maislurp-client-erlang_deliverability_simulation_job_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'testId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'scope' := binary(),
       'status' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'startedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'totalTargets' := integer(),
       'totalPlannedSends' := integer(),
       'nextSendIndex' := integer(),
       'sentCount' := integer(),
       'successCount' := integer(),
       'failureCount' := integer(),
       'progressPercent' := float(),
       'activeTargetLabel' => binary(),
       'estimatedRemainingMs' => integer(),
       'configSnapshot' := maislurp-client-erlang_deliverability_simulation_job_config_dto:maislurp-client-erlang_deliverability_simulation_job_config_dto(),
       'errorSummary' := maislurp-client-erlang_deliverability_simulation_job_error_summary_dto:maislurp-client-erlang_deliverability_simulation_job_error_summary_dto()
     }.

encode(#{ 'id' := Id,
          'testId' := TestId,
          'scope' := Scope,
          'status' := Status,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'startedAt' := StartedAt,
          'completedAt' := CompletedAt,
          'totalTargets' := TotalTargets,
          'totalPlannedSends' := TotalPlannedSends,
          'nextSendIndex' := NextSendIndex,
          'sentCount' := SentCount,
          'successCount' := SuccessCount,
          'failureCount' := FailureCount,
          'progressPercent' := ProgressPercent,
          'activeTargetLabel' := ActiveTargetLabel,
          'estimatedRemainingMs' := EstimatedRemainingMs,
          'configSnapshot' := ConfigSnapshot,
          'errorSummary' := ErrorSummary
        }) ->
    #{ 'id' => Id,
       'testId' => TestId,
       'scope' => Scope,
       'status' => Status,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'startedAt' => StartedAt,
       'completedAt' => CompletedAt,
       'totalTargets' => TotalTargets,
       'totalPlannedSends' => TotalPlannedSends,
       'nextSendIndex' => NextSendIndex,
       'sentCount' => SentCount,
       'successCount' => SuccessCount,
       'failureCount' => FailureCount,
       'progressPercent' => ProgressPercent,
       'activeTargetLabel' => ActiveTargetLabel,
       'estimatedRemainingMs' => EstimatedRemainingMs,
       'configSnapshot' => ConfigSnapshot,
       'errorSummary' => ErrorSummary
     }.
