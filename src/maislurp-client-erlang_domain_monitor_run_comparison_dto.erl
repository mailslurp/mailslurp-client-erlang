-module(maislurp-client-erlang_domain_monitor_run_comparison_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_run_comparison_dto/0]).

-type maislurp-client-erlang_domain_monitor_run_comparison_dto() ::
    #{ 'baseline' := maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto(),
       'current' := maislurp-client-erlang_domain_monitor_run_dto:maislurp-client-erlang_domain_monitor_run_dto(),
       'healthScoreDelta' := integer(),
       'statusChanged' := boolean(),
       'passingChecksDelta' := integer(),
       'failingChecksDelta' := integer(),
       'spfChanged' := boolean(),
       'dmarcChanged' := boolean(),
       'dmarcEnforcedChanged' := boolean(),
       'mxChanged' := boolean(),
       'addedInsights' := list(),
       'removedInsights' := list()
     }.

encode(#{ 'baseline' := Baseline,
          'current' := Current,
          'healthScoreDelta' := HealthScoreDelta,
          'statusChanged' := StatusChanged,
          'passingChecksDelta' := PassingChecksDelta,
          'failingChecksDelta' := FailingChecksDelta,
          'spfChanged' := SpfChanged,
          'dmarcChanged' := DmarcChanged,
          'dmarcEnforcedChanged' := DmarcEnforcedChanged,
          'mxChanged' := MxChanged,
          'addedInsights' := AddedInsights,
          'removedInsights' := RemovedInsights
        }) ->
    #{ 'baseline' => Baseline,
       'current' => Current,
       'healthScoreDelta' => HealthScoreDelta,
       'statusChanged' => StatusChanged,
       'passingChecksDelta' => PassingChecksDelta,
       'failingChecksDelta' => FailingChecksDelta,
       'spfChanged' => SpfChanged,
       'dmarcChanged' => DmarcChanged,
       'dmarcEnforcedChanged' => DmarcEnforcedChanged,
       'mxChanged' => MxChanged,
       'addedInsights' => AddedInsights,
       'removedInsights' => RemovedInsights
     }.
