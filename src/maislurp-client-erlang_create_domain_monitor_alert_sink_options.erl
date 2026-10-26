-module(maislurp-client-erlang_create_domain_monitor_alert_sink_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_domain_monitor_alert_sink_options/0]).

-type maislurp-client-erlang_create_domain_monitor_alert_sink_options() ::
    #{ 'type' := binary(),
       'target' := binary(),
       'severityThreshold' => binary(),
       'enabled' => boolean()
     }.

encode(#{ 'type' := Type,
          'target' := Target,
          'severityThreshold' := SeverityThreshold,
          'enabled' := Enabled
        }) ->
    #{ 'type' => Type,
       'target' => Target,
       'severityThreshold' => SeverityThreshold,
       'enabled' => Enabled
     }.
