-module(maislurp-client-erlang_sending_connection_delivery_probe_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sending_connection_delivery_probe_dto/0]).

-type maislurp-client-erlang_sending_connection_delivery_probe_dto() ::
    #{ 'connectionId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'acceptedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'deliveredAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'latencyMillis' => integer()
     }.

encode(#{ 'connectionId' := ConnectionId,
          'status' := Status,
          'acceptedAt' := AcceptedAt,
          'deliveredAt' := DeliveredAt,
          'latencyMillis' := LatencyMillis
        }) ->
    #{ 'connectionId' => ConnectionId,
       'status' => Status,
       'acceptedAt' => AcceptedAt,
       'deliveredAt' => DeliveredAt,
       'latencyMillis' => LatencyMillis
     }.
