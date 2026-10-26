-module(maislurp-client-erlang_email_warmup_pacing_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_pacing_dto/0]).

-type maislurp-client-erlang_email_warmup_pacing_dto() ::
    #{ 'configuredDailyTarget' := integer(),
       'effectiveDailyTarget' := integer(),
       'action' := binary(),
       'reasonCode' := binary(),
       'explanation' := binary()
     }.

encode(#{ 'configuredDailyTarget' := ConfiguredDailyTarget,
          'effectiveDailyTarget' := EffectiveDailyTarget,
          'action' := Action,
          'reasonCode' := ReasonCode,
          'explanation' := Explanation
        }) ->
    #{ 'configuredDailyTarget' => ConfiguredDailyTarget,
       'effectiveDailyTarget' => EffectiveDailyTarget,
       'action' => Action,
       'reasonCode' => ReasonCode,
       'explanation' => Explanation
     }.
