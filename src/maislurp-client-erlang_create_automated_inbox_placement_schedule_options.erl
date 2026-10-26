-module(maislurp-client-erlang_create_automated_inbox_placement_schedule_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_automated_inbox_placement_schedule_options/0]).

-type maislurp-client-erlang_create_automated_inbox_placement_schedule_options() ::
    #{ 'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' := binary(),
       'intervalMinutes' := integer(),
       'enabled' := boolean(),
       'requestedSegment' := binary(),
       'seedlistProfile' => binary(),
       'subjectTemplate' := binary(),
       'textBodyTemplate' => binary(),
       'htmlBodyTemplate' => binary(),
       'sourceRunId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'connectionId' := ConnectionId,
          'name' := Name,
          'intervalMinutes' := IntervalMinutes,
          'enabled' := Enabled,
          'requestedSegment' := RequestedSegment,
          'seedlistProfile' := SeedlistProfile,
          'subjectTemplate' := SubjectTemplate,
          'textBodyTemplate' := TextBodyTemplate,
          'htmlBodyTemplate' := HtmlBodyTemplate,
          'sourceRunId' := SourceRunId
        }) ->
    #{ 'connectionId' => ConnectionId,
       'name' => Name,
       'intervalMinutes' => IntervalMinutes,
       'enabled' => Enabled,
       'requestedSegment' => RequestedSegment,
       'seedlistProfile' => SeedlistProfile,
       'subjectTemplate' => SubjectTemplate,
       'textBodyTemplate' => TextBodyTemplate,
       'htmlBodyTemplate' => HtmlBodyTemplate,
       'sourceRunId' => SourceRunId
     }.
