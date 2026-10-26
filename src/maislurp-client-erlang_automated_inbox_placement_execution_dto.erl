-module(maislurp-client-erlang_automated_inbox_placement_execution_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_automated_inbox_placement_execution_dto/0]).

-type maislurp-client-erlang_automated_inbox_placement_execution_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'scheduleId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'scheduledFor' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'triggerSource' := binary(),
       'status' := binary(),
       'inboxPlacementRunId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetCount' := integer(),
       'sentCount' := integer(),
       'attemptCount' := integer(),
       'failureCode' => binary(),
       'failureMessage' => binary(),
       'startedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'finishedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'scheduleId' := ScheduleId,
          'connectionId' := ConnectionId,
          'scheduledFor' := ScheduledFor,
          'triggerSource' := TriggerSource,
          'status' := Status,
          'inboxPlacementRunId' := InboxPlacementRunId,
          'targetCount' := TargetCount,
          'sentCount' := SentCount,
          'attemptCount' := AttemptCount,
          'failureCode' := FailureCode,
          'failureMessage' := FailureMessage,
          'startedAt' := StartedAt,
          'finishedAt' := FinishedAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'scheduleId' => ScheduleId,
       'connectionId' => ConnectionId,
       'scheduledFor' => ScheduledFor,
       'triggerSource' => TriggerSource,
       'status' => Status,
       'inboxPlacementRunId' => InboxPlacementRunId,
       'targetCount' => TargetCount,
       'sentCount' => SentCount,
       'attemptCount' => AttemptCount,
       'failureCode' => FailureCode,
       'failureMessage' => FailureMessage,
       'startedAt' => StartedAt,
       'finishedAt' => FinishedAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
