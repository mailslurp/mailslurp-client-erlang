-module(maislurp-client-erlang_move_device_preview_runs_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_move_device_preview_runs_options/0]).

-type maislurp-client-erlang_move_device_preview_runs_options() ::
    #{ 'runIds' := list(),
       'folderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'runIds' := RunIds,
          'folderId' := FolderId
        }) ->
    #{ 'runIds' => RunIds,
       'folderId' => FolderId
     }.
