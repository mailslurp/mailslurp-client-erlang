-module(maislurp-client-erlang_email_warmup_readiness_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_readiness_dto/0]).

-type maislurp-client-erlang_email_warmup_readiness_dto() ::
    #{ 'status' := binary(),
       'summary' := binary(),
       'readyForDailyVolume' := integer(),
       'goalDailyVolume' := integer(),
       'estimatedReadyAt' => calendar:date(),
       'today' := maislurp-client-erlang_email_warmup_today_dto:maislurp-client-erlang_email_warmup_today_dto(),
       'pacing' := maislurp-client-erlang_email_warmup_pacing_dto:maislurp-client-erlang_email_warmup_pacing_dto(),
       'placementDeltas' := list(),
       'domainHealth' := maislurp-client-erlang_email_warmup_domain_health_dto:maislurp-client-erlang_email_warmup_domain_health_dto(),
       'postmasterSignals' => maislurp-client-erlang_email_warmup_postmaster_signals_dto:maislurp-client-erlang_email_warmup_postmaster_signals_dto(),
       'recommendations' := list()
     }.

encode(#{ 'status' := Status,
          'summary' := Summary,
          'readyForDailyVolume' := ReadyForDailyVolume,
          'goalDailyVolume' := GoalDailyVolume,
          'estimatedReadyAt' := EstimatedReadyAt,
          'today' := Today,
          'pacing' := Pacing,
          'placementDeltas' := PlacementDeltas,
          'domainHealth' := DomainHealth,
          'postmasterSignals' := PostmasterSignals,
          'recommendations' := Recommendations
        }) ->
    #{ 'status' => Status,
       'summary' => Summary,
       'readyForDailyVolume' => ReadyForDailyVolume,
       'goalDailyVolume' => GoalDailyVolume,
       'estimatedReadyAt' => EstimatedReadyAt,
       'today' => Today,
       'pacing' => Pacing,
       'placementDeltas' => PlacementDeltas,
       'domainHealth' => DomainHealth,
       'postmasterSignals' => PostmasterSignals,
       'recommendations' => Recommendations
     }.
