-module(maislurp-client-erlang_email_warmup_send_slot_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_send_slot_dto/0]).

-type maislurp-client-erlang_email_warmup_send_slot_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'programId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'slotDate' := calendar:date(),
       'rampDay' := integer(),
       'sequence' := integer(),
       'scheduledFor' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'status' := binary(),
       'targetClass' := binary(),
       'contentHash' := binary(),
       'attemptCount' := integer(),
       'maxAttempts' := integer(),
       'acceptedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'observedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'outcomeClass' => binary(),
       'failureCode' => binary(),
       'reconciliationRequired' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'programId' := ProgramId,
          'slotDate' := SlotDate,
          'rampDay' := RampDay,
          'sequence' := Sequence,
          'scheduledFor' := ScheduledFor,
          'status' := Status,
          'targetClass' := TargetClass,
          'contentHash' := ContentHash,
          'attemptCount' := AttemptCount,
          'maxAttempts' := MaxAttempts,
          'acceptedAt' := AcceptedAt,
          'observedAt' := ObservedAt,
          'outcomeClass' := OutcomeClass,
          'failureCode' := FailureCode,
          'reconciliationRequired' := ReconciliationRequired,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'programId' => ProgramId,
       'slotDate' => SlotDate,
       'rampDay' => RampDay,
       'sequence' => Sequence,
       'scheduledFor' => ScheduledFor,
       'status' => Status,
       'targetClass' => TargetClass,
       'contentHash' => ContentHash,
       'attemptCount' => AttemptCount,
       'maxAttempts' => MaxAttempts,
       'acceptedAt' => AcceptedAt,
       'observedAt' => ObservedAt,
       'outcomeClass' => OutcomeClass,
       'failureCode' => FailureCode,
       'reconciliationRequired' => ReconciliationRequired,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
