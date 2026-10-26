-module(maislurp-client-erlang_create_email_warmup_program_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_email_warmup_program_options/0]).

-type maislurp-client-erlang_create_email_warmup_program_options() ::
    #{ 'name' := binary(),
       'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'customerIntent' := binary(),
       'currentDailyVolume' := integer(),
       'goalDailyVolume' := integer(),
       'schedulePreset' := binary(),
       'rampDurationDays' := integer(),
       'maintenanceEnabled' := boolean(),
       'maintenanceDailyVolume' := integer(),
       'sendWindowStart' := binary(),
       'sendWindowEnd' := binary(),
       'timeZone' := binary(),
       'requestedCoverage' := binary(),
       'baselineTestId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'content' := maislurp-client-erlang_email_warmup_content_options:maislurp-client-erlang_email_warmup_content_options(),
       'senderOwnershipAttested' := boolean(),
       'permissionBasedSendingAttested' := boolean()
     }.

encode(#{ 'name' := Name,
          'connectionId' := ConnectionId,
          'customerIntent' := CustomerIntent,
          'currentDailyVolume' := CurrentDailyVolume,
          'goalDailyVolume' := GoalDailyVolume,
          'schedulePreset' := SchedulePreset,
          'rampDurationDays' := RampDurationDays,
          'maintenanceEnabled' := MaintenanceEnabled,
          'maintenanceDailyVolume' := MaintenanceDailyVolume,
          'sendWindowStart' := SendWindowStart,
          'sendWindowEnd' := SendWindowEnd,
          'timeZone' := TimeZone,
          'requestedCoverage' := RequestedCoverage,
          'baselineTestId' := BaselineTestId,
          'content' := Content,
          'senderOwnershipAttested' := SenderOwnershipAttested,
          'permissionBasedSendingAttested' := PermissionBasedSendingAttested
        }) ->
    #{ 'name' => Name,
       'connectionId' => ConnectionId,
       'customerIntent' => CustomerIntent,
       'currentDailyVolume' => CurrentDailyVolume,
       'goalDailyVolume' => GoalDailyVolume,
       'schedulePreset' => SchedulePreset,
       'rampDurationDays' => RampDurationDays,
       'maintenanceEnabled' => MaintenanceEnabled,
       'maintenanceDailyVolume' => MaintenanceDailyVolume,
       'sendWindowStart' => SendWindowStart,
       'sendWindowEnd' => SendWindowEnd,
       'timeZone' => TimeZone,
       'requestedCoverage' => RequestedCoverage,
       'baselineTestId' => BaselineTestId,
       'content' => Content,
       'senderOwnershipAttested' => SenderOwnershipAttested,
       'permissionBasedSendingAttested' => PermissionBasedSendingAttested
     }.
