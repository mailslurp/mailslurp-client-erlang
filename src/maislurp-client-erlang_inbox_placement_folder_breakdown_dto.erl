-module(maislurp-client-erlang_inbox_placement_folder_breakdown_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_folder_breakdown_dto/0]).

-type maislurp-client-erlang_inbox_placement_folder_breakdown_dto() ::
    #{ 'folder' := binary(),
       'count' := integer(),
       'percentage' := float()
     }.

encode(#{ 'folder' := Folder,
          'count' := Count,
          'percentage' := Percentage
        }) ->
    #{ 'folder' => Folder,
       'count' => Count,
       'percentage' => Percentage
     }.
