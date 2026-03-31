-module(maislurp-client-erlang_create_domain_monitor_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_domain_monitor_options/0]).

-type maislurp-client-erlang_create_domain_monitor_options() ::
    #{ 'domain' := binary(),
       'name' => binary(),
       'intervalSeconds' => integer(),
       'enabled' => boolean(),
       'schedulingEnabled' => boolean()
     }.

encode(#{ 'domain' := Domain,
          'name' := Name,
          'intervalSeconds' := IntervalSeconds,
          'enabled' := Enabled,
          'schedulingEnabled' := SchedulingEnabled
        }) ->
    #{ 'domain' => Domain,
       'name' => Name,
       'intervalSeconds' => IntervalSeconds,
       'enabled' => Enabled,
       'schedulingEnabled' => SchedulingEnabled
     }.
