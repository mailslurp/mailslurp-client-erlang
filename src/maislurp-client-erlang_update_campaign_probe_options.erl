-module(maislurp-client-erlang_update_campaign_probe_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_campaign_probe_options/0]).

-type maislurp-client-erlang_update_campaign_probe_options() ::
    #{ 'name' => binary(),
       'enabled' => boolean(),
       'intervalSeconds' => integer(),
       'schedulingEnabled' => boolean()
     }.

encode(#{ 'name' := Name,
          'enabled' := Enabled,
          'intervalSeconds' := IntervalSeconds,
          'schedulingEnabled' := SchedulingEnabled
        }) ->
    #{ 'name' => Name,
       'enabled' => Enabled,
       'intervalSeconds' => IntervalSeconds,
       'schedulingEnabled' => SchedulingEnabled
     }.
