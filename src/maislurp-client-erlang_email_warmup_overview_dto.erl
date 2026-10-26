-module(maislurp-client-erlang_email_warmup_overview_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_overview_dto/0]).

-type maislurp-client-erlang_email_warmup_overview_dto() ::
    #{ 'fromDate' := calendar:date(),
       'throughDate' := calendar:date(),
       'totalPrograms' := integer(),
       'activePrograms' := integer(),
       'rampingPrograms' := integer(),
       'maintenancePrograms' := integer(),
       'pausedPrograms' := integer(),
       'attentionRequiredPrograms' := integer(),
       'acceptedSends' := integer(),
       'failedSends' := integer(),
       'dailyActivity' := list(),
       'programProgress' := list()
     }.

encode(#{ 'fromDate' := FromDate,
          'throughDate' := ThroughDate,
          'totalPrograms' := TotalPrograms,
          'activePrograms' := ActivePrograms,
          'rampingPrograms' := RampingPrograms,
          'maintenancePrograms' := MaintenancePrograms,
          'pausedPrograms' := PausedPrograms,
          'attentionRequiredPrograms' := AttentionRequiredPrograms,
          'acceptedSends' := AcceptedSends,
          'failedSends' := FailedSends,
          'dailyActivity' := DailyActivity,
          'programProgress' := ProgramProgress
        }) ->
    #{ 'fromDate' => FromDate,
       'throughDate' => ThroughDate,
       'totalPrograms' => TotalPrograms,
       'activePrograms' => ActivePrograms,
       'rampingPrograms' => RampingPrograms,
       'maintenancePrograms' => MaintenancePrograms,
       'pausedPrograms' => PausedPrograms,
       'attentionRequiredPrograms' => AttentionRequiredPrograms,
       'acceptedSends' => AcceptedSends,
       'failedSends' => FailedSends,
       'dailyActivity' => DailyActivity,
       'programProgress' => ProgramProgress
     }.
