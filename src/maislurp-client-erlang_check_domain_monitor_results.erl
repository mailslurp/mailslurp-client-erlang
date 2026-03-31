-module(maislurp-client-erlang_check_domain_monitor_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_domain_monitor_results/0]).

-type maislurp-client-erlang_check_domain_monitor_results() ::
    #{ 'domain' := binary(),
       'status' := binary(),
       'healthScore' := integer(),
       'totalChecks' := integer(),
       'passingChecks' := integer(),
       'failingChecks' := integer(),
       'spfOk' := boolean(),
       'dmarcOk' := boolean(),
       'dmarcEnforced' := boolean(),
       'mxOk' := boolean(),
       'insights' := list(),
       'errorMessage' => binary()
     }.

encode(#{ 'domain' := Domain,
          'status' := Status,
          'healthScore' := HealthScore,
          'totalChecks' := TotalChecks,
          'passingChecks' := PassingChecks,
          'failingChecks' := FailingChecks,
          'spfOk' := SpfOk,
          'dmarcOk' := DmarcOk,
          'dmarcEnforced' := DmarcEnforced,
          'mxOk' := MxOk,
          'insights' := Insights,
          'errorMessage' := ErrorMessage
        }) ->
    #{ 'domain' => Domain,
       'status' => Status,
       'healthScore' => HealthScore,
       'totalChecks' => TotalChecks,
       'passingChecks' => PassingChecks,
       'failingChecks' => FailingChecks,
       'spfOk' => SpfOk,
       'dmarcOk' => DmarcOk,
       'dmarcEnforced' => DmarcEnforced,
       'mxOk' => MxOk,
       'insights' => Insights,
       'errorMessage' => ErrorMessage
     }.
