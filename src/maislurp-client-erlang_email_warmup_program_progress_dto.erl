-module(maislurp-client-erlang_email_warmup_program_progress_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_program_progress_dto/0]).

-type maislurp-client-erlang_email_warmup_program_progress_dto() ::
    #{ 'programId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'currentRampDay' := integer(),
       'rampDurationDays' := integer(),
       'progressPercent' := integer(),
       'totalAcceptedSends' := integer()
     }.

encode(#{ 'programId' := ProgramId,
          'currentRampDay' := CurrentRampDay,
          'rampDurationDays' := RampDurationDays,
          'progressPercent' := ProgressPercent,
          'totalAcceptedSends' := TotalAcceptedSends
        }) ->
    #{ 'programId' => ProgramId,
       'currentRampDay' => CurrentRampDay,
       'rampDurationDays' => RampDurationDays,
       'progressPercent' => ProgressPercent,
       'totalAcceptedSends' => TotalAcceptedSends
     }.
