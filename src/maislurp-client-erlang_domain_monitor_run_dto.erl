-module(maislurp-client-erlang_domain_monitor_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_run_dto/0]).

-type maislurp-client-erlang_domain_monitor_run_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'monitorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domain' := binary(),
       'status' := binary(),
       'triggerSource' := binary(),
       'healthScore' := integer(),
       'totalChecks' := integer(),
       'passingChecks' := integer(),
       'failingChecks' := integer(),
       'spfOk' := boolean(),
       'dmarcOk' := boolean(),
       'dmarcEnforced' := boolean(),
       'mxOk' := boolean(),
       'insights' := list(),
       'errorMessage' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'monitorId' := MonitorId,
          'userId' := UserId,
          'domain' := Domain,
          'status' := Status,
          'triggerSource' := TriggerSource,
          'healthScore' := HealthScore,
          'totalChecks' := TotalChecks,
          'passingChecks' := PassingChecks,
          'failingChecks' := FailingChecks,
          'spfOk' := SpfOk,
          'dmarcOk' := DmarcOk,
          'dmarcEnforced' := DmarcEnforced,
          'mxOk' := MxOk,
          'insights' := Insights,
          'errorMessage' := ErrorMessage,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'monitorId' => MonitorId,
       'userId' => UserId,
       'domain' => Domain,
       'status' => Status,
       'triggerSource' => TriggerSource,
       'healthScore' => HealthScore,
       'totalChecks' => TotalChecks,
       'passingChecks' => PassingChecks,
       'failingChecks' => FailingChecks,
       'spfOk' => SpfOk,
       'dmarcOk' => DmarcOk,
       'dmarcEnforced' => DmarcEnforced,
       'mxOk' => MxOk,
       'insights' => Insights,
       'errorMessage' => ErrorMessage,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
