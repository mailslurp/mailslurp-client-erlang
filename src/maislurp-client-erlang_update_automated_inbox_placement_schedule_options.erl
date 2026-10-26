-module(maislurp-client-erlang_update_automated_inbox_placement_schedule_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_automated_inbox_placement_schedule_options/0]).

-type maislurp-client-erlang_update_automated_inbox_placement_schedule_options() ::
    #{ 'name' => binary(),
       'intervalMinutes' => integer(),
       'enabled' => boolean(),
       'requestedSegment' => binary(),
       'seedlistProfile' => binary(),
       'subjectTemplate' => binary(),
       'textBodyTemplate' => binary(),
       'htmlBodyTemplate' => binary()
     }.

encode(#{ 'name' := Name,
          'intervalMinutes' := IntervalMinutes,
          'enabled' := Enabled,
          'requestedSegment' := RequestedSegment,
          'seedlistProfile' := SeedlistProfile,
          'subjectTemplate' := SubjectTemplate,
          'textBodyTemplate' := TextBodyTemplate,
          'htmlBodyTemplate' := HtmlBodyTemplate
        }) ->
    #{ 'name' => Name,
       'intervalMinutes' => IntervalMinutes,
       'enabled' => Enabled,
       'requestedSegment' => RequestedSegment,
       'seedlistProfile' => SeedlistProfile,
       'subjectTemplate' => SubjectTemplate,
       'textBodyTemplate' => TextBodyTemplate,
       'htmlBodyTemplate' => HtmlBodyTemplate
     }.
