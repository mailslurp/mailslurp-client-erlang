-module(maislurp-client-erlang_delete_device_preview_run_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_delete_device_preview_run_result/0]).

-type maislurp-client-erlang_delete_device_preview_run_result() ::
    #{ 'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'deleted' := boolean(),
       'remoteCleanupAttempted' := boolean(),
       'remoteCleanupSucceeded' := boolean()
     }.

encode(#{ 'runId' := RunId,
          'deleted' := Deleted,
          'remoteCleanupAttempted' := RemoteCleanupAttempted,
          'remoteCleanupSucceeded' := RemoteCleanupSucceeded
        }) ->
    #{ 'runId' => RunId,
       'deleted' => Deleted,
       'remoteCleanupAttempted' => RemoteCleanupAttempted,
       'remoteCleanupSucceeded' => RemoteCleanupSucceeded
     }.
