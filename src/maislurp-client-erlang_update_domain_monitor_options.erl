-module(maislurp-client-erlang_update_domain_monitor_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_domain_monitor_options/0]).

-type maislurp-client-erlang_update_domain_monitor_options() ::
    #{ 'name' => binary(),
       'intervalSeconds' => integer(),
       'enabled' => boolean(),
       'schedulingEnabled' => boolean()
     }.

encode(#{ 'name' := Name,
          'intervalSeconds' := IntervalSeconds,
          'enabled' := Enabled,
          'schedulingEnabled' := SchedulingEnabled
        }) ->
    #{ 'name' => Name,
       'intervalSeconds' => IntervalSeconds,
       'enabled' => Enabled,
       'schedulingEnabled' => SchedulingEnabled
     }.
