-module(maislurp-client-erlang_delete_device_preview_folder_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_delete_device_preview_folder_result/0]).

-type maislurp-client-erlang_delete_device_preview_folder_result() ::
    #{ 'folderId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'deleted' := boolean()
     }.

encode(#{ 'folderId' := FolderId,
          'deleted' := Deleted
        }) ->
    #{ 'folderId' => FolderId,
       'deleted' => Deleted
     }.
