-module(maislurp-client-erlang_domain_monitor_series_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_series_dto/0]).

-type maislurp-client-erlang_domain_monitor_series_dto() ::
    #{ 'monitorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bucket' := binary(),
       'points' := list()
     }.

encode(#{ 'monitorId' := MonitorId,
          'since' := Since,
          'before' := Before,
          'bucket' := Bucket,
          'points' := Points
        }) ->
    #{ 'monitorId' => MonitorId,
       'since' => Since,
       'before' => Before,
       'bucket' => Bucket,
       'points' => Points
     }.
