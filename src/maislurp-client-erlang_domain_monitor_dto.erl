-module(maislurp-client-erlang_domain_monitor_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_dto/0]).

-type maislurp-client-erlang_domain_monitor_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domain' := binary(),
       'name' => binary(),
       'intervalSeconds' => integer(),
       'enabled' := boolean(),
       'schedulingEnabled' := boolean(),
       'lastStatus' => binary(),
       'healthScore' => integer(),
       'lastRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'nextRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'domain' := Domain,
          'name' := Name,
          'intervalSeconds' := IntervalSeconds,
          'enabled' := Enabled,
          'schedulingEnabled' := SchedulingEnabled,
          'lastStatus' := LastStatus,
          'healthScore' := HealthScore,
          'lastRunAt' := LastRunAt,
          'nextRunAt' := NextRunAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'domain' => Domain,
       'name' => Name,
       'intervalSeconds' => IntervalSeconds,
       'enabled' => Enabled,
       'schedulingEnabled' => SchedulingEnabled,
       'lastStatus' => LastStatus,
       'healthScore' => HealthScore,
       'lastRunAt' => LastRunAt,
       'nextRunAt' => NextRunAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
