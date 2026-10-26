-module(maislurp-client-erlang_email_warmup_placement_check_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_placement_check_dto/0]).

-type maislurp-client-erlang_email_warmup_placement_check_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'programId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'checkpointDay' := integer(),
       'type' := binary(),
       'status' := binary(),
       'scheduledFor' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxPlacementRunId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetCount' := integer(),
       'acceptedCount' := integer(),
       'inboxCount' := integer(),
       'spamCount' := integer(),
       'notReceivedCount' := integer(),
       'inboxPercent' := integer(),
       'providerResults' := list(),
       'failureCode' => binary(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'programId' := ProgramId,
          'checkpointDay' := CheckpointDay,
          'type' := Type,
          'status' := Status,
          'scheduledFor' := ScheduledFor,
          'inboxPlacementRunId' := InboxPlacementRunId,
          'targetCount' := TargetCount,
          'acceptedCount' := AcceptedCount,
          'inboxCount' := InboxCount,
          'spamCount' := SpamCount,
          'notReceivedCount' := NotReceivedCount,
          'inboxPercent' := InboxPercent,
          'providerResults' := ProviderResults,
          'failureCode' := FailureCode,
          'completedAt' := CompletedAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'programId' => ProgramId,
       'checkpointDay' => CheckpointDay,
       'type' => Type,
       'status' => Status,
       'scheduledFor' => ScheduledFor,
       'inboxPlacementRunId' => InboxPlacementRunId,
       'targetCount' => TargetCount,
       'acceptedCount' => AcceptedCount,
       'inboxCount' => InboxCount,
       'spamCount' => SpamCount,
       'notReceivedCount' => NotReceivedCount,
       'inboxPercent' => InboxPercent,
       'providerResults' => ProviderResults,
       'failureCode' => FailureCode,
       'completedAt' => CompletedAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
