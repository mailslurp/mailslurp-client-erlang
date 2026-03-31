-module(maislurp-client-erlang_device_preview_feedback_list_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_feedback_list_dto/0]).

-type maislurp-client-erlang_device_preview_feedback_list_dto() ::
    #{ 'totalElements' := integer(),
       'page' := integer(),
       'size' := integer(),
       'items' := list()
     }.

encode(#{ 'totalElements' := TotalElements,
          'page' := Page,
          'size' := Size,
          'items' := Items
        }) ->
    #{ 'totalElements' => TotalElements,
       'page' => Page,
       'size' => Size,
       'items' => Items
     }.
