-module(maislurp-client-erlang_connector_sync_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_result/0]).

-type maislurp-client-erlang_connector_sync_result() ::
    #{ 'emailSyncCount' := integer(),
       'logLines' => list()
     }.

encode(#{ 'emailSyncCount' := EmailSyncCount,
          'logLines' := LogLines
        }) ->
    #{ 'emailSyncCount' => EmailSyncCount,
       'logLines' => LogLines
     }.
