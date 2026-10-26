-module(maislurp-client-erlang_automated_inbox_placement_schedule_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_automated_inbox_placement_schedule_dto/0]).

-type maislurp-client-erlang_automated_inbox_placement_schedule_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'enabled' := boolean(),
       'intervalMinutes' := integer(),
       'requestedSegment' := binary(),
       'seedlistProfile' => binary(),
       'subjectTemplate' := binary(),
       'textBodyTemplate' => binary(),
       'htmlBodyTemplate' => binary(),
       'sourceRunId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'lastStatus' => binary(),
       'consecutiveFailures' := integer(),
       'lastRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'nextRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'connectionId' := ConnectionId,
          'name' := Name,
          'enabled' := Enabled,
          'intervalMinutes' := IntervalMinutes,
          'requestedSegment' := RequestedSegment,
          'seedlistProfile' := SeedlistProfile,
          'subjectTemplate' := SubjectTemplate,
          'textBodyTemplate' := TextBodyTemplate,
          'htmlBodyTemplate' := HtmlBodyTemplate,
          'sourceRunId' := SourceRunId,
          'lastStatus' := LastStatus,
          'consecutiveFailures' := ConsecutiveFailures,
          'lastRunAt' := LastRunAt,
          'nextRunAt' := NextRunAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'connectionId' => ConnectionId,
       'name' => Name,
       'enabled' => Enabled,
       'intervalMinutes' => IntervalMinutes,
       'requestedSegment' => RequestedSegment,
       'seedlistProfile' => SeedlistProfile,
       'subjectTemplate' => SubjectTemplate,
       'textBodyTemplate' => TextBodyTemplate,
       'htmlBodyTemplate' => HtmlBodyTemplate,
       'sourceRunId' => SourceRunId,
       'lastStatus' => LastStatus,
       'consecutiveFailures' => ConsecutiveFailures,
       'lastRunAt' => LastRunAt,
       'nextRunAt' => NextRunAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
