-module(maislurp-client-erlang_update_device_preview_folder_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_device_preview_folder_options/0]).

-type maislurp-client-erlang_update_device_preview_folder_options() ::
    #{ 'name' := binary(),
       'parentFolderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'name' := Name,
          'parentFolderId' := ParentFolderId
        }) ->
    #{ 'name' => Name,
       'parentFolderId' => ParentFolderId
     }.
