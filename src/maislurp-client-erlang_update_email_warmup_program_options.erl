-module(maislurp-client-erlang_update_email_warmup_program_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_email_warmup_program_options/0]).

-type maislurp-client-erlang_update_email_warmup_program_options() ::
    #{ 'expectedVersion' := integer(),
       'name' => binary(),
       'goalDailyVolume' => integer(),
       'schedulePreset' => binary(),
       'rampDurationDays' => integer(),
       'maintenanceEnabled' => boolean(),
       'maintenanceDailyVolume' => integer(),
       'sendWindowStart' => binary(),
       'sendWindowEnd' => binary(),
       'timeZone' => binary(),
       'content' => maislurp-client-erlang_email_warmup_content_options:maislurp-client-erlang_email_warmup_content_options()
     }.

encode(#{ 'expectedVersion' := ExpectedVersion,
          'name' := Name,
          'goalDailyVolume' := GoalDailyVolume,
          'schedulePreset' := SchedulePreset,
          'rampDurationDays' := RampDurationDays,
          'maintenanceEnabled' := MaintenanceEnabled,
          'maintenanceDailyVolume' := MaintenanceDailyVolume,
          'sendWindowStart' := SendWindowStart,
          'sendWindowEnd' := SendWindowEnd,
          'timeZone' := TimeZone,
          'content' := Content
        }) ->
    #{ 'expectedVersion' => ExpectedVersion,
       'name' => Name,
       'goalDailyVolume' => GoalDailyVolume,
       'schedulePreset' => SchedulePreset,
       'rampDurationDays' => RampDurationDays,
       'maintenanceEnabled' => MaintenanceEnabled,
       'maintenanceDailyVolume' => MaintenanceDailyVolume,
       'sendWindowStart' => SendWindowStart,
       'sendWindowEnd' => SendWindowEnd,
       'timeZone' => TimeZone,
       'content' => Content
     }.
