-module(maislurp-client-erlang_email_warmup_program_analytics_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_program_analytics_dto/0]).

-type maislurp-client-erlang_email_warmup_program_analytics_dto() ::
    #{ 'programId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromDate' := calendar:date(),
       'throughDate' := calendar:date(),
       'progress' := maislurp-client-erlang_email_warmup_program_progress_dto:maislurp-client-erlang_email_warmup_program_progress_dto(),
       'totalScheduledSends' := integer(),
       'totalAcceptedSends' := integer(),
       'totalObservedSends' := integer(),
       'totalFailedSends' := integer(),
       'attentionRequiredSends' := integer(),
       'dailyActivity' := list(),
       'placementChecks' := list(),
       'readiness' => maislurp-client-erlang_email_warmup_readiness_dto:maislurp-client-erlang_email_warmup_readiness_dto()
     }.

encode(#{ 'programId' := ProgramId,
          'fromDate' := FromDate,
          'throughDate' := ThroughDate,
          'progress' := Progress,
          'totalScheduledSends' := TotalScheduledSends,
          'totalAcceptedSends' := TotalAcceptedSends,
          'totalObservedSends' := TotalObservedSends,
          'totalFailedSends' := TotalFailedSends,
          'attentionRequiredSends' := AttentionRequiredSends,
          'dailyActivity' := DailyActivity,
          'placementChecks' := PlacementChecks,
          'readiness' := Readiness
        }) ->
    #{ 'programId' => ProgramId,
       'fromDate' => FromDate,
       'throughDate' => ThroughDate,
       'progress' => Progress,
       'totalScheduledSends' => TotalScheduledSends,
       'totalAcceptedSends' => TotalAcceptedSends,
       'totalObservedSends' => TotalObservedSends,
       'totalFailedSends' => TotalFailedSends,
       'attentionRequiredSends' => AttentionRequiredSends,
       'dailyActivity' => DailyActivity,
       'placementChecks' => PlacementChecks,
       'readiness' => Readiness
     }.
