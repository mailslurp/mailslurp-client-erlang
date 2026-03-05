-module(maislurp-client-erlang_connector_sync_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_result/0]).

-type maislurp-client-erlang_connector_sync_result() ::
    #{ 'emailSyncCount' := integer(),
       'logs' => list(),
       'emailIds' => list()
     }.

encode(#{ 'emailSyncCount' := EmailSyncCount,
          'logs' := Logs,
          'emailIds' := EmailIds
        }) ->
    #{ 'emailSyncCount' => EmailSyncCount,
       'logs' => Logs,
       'emailIds' => EmailIds
     }.
