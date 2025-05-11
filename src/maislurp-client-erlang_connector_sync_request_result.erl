-module(maislurp-client-erlang_connector_sync_request_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_request_result/0]).

-type maislurp-client-erlang_connector_sync_request_result() ::
    #{ 'syncResult' => maislurp-client-erlang_connector_sync_result:maislurp-client-erlang_connector_sync_result(),
       'exception' => binary(),
       'eventId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'syncResult' := SyncResult,
          'exception' := Exception,
          'eventId' := EventId
        }) ->
    #{ 'syncResult' => SyncResult,
       'exception' => Exception,
       'eventId' => EventId
     }.
