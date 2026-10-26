-module(maislurp-client-erlang_inbox_placement_analysis_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analysis_item_dto/0]).

-type maislurp-client-erlang_inbox_placement_analysis_item_dto() ::
    #{ 'key' := binary(),
       'status' := binary(),
       'title' := binary(),
       'message' := binary(),
       'meta' := maps:map(),
       'actionLabel' => binary(),
       'actionUrl' => binary(),
       'detailTable' => maislurp-client-erlang_inbox_placement_analysis_detail_table_dto:maislurp-client-erlang_inbox_placement_analysis_detail_table_dto()
     }.

encode(#{ 'key' := Key,
          'status' := Status,
          'title' := Title,
          'message' := Message,
          'meta' := Meta,
          'actionLabel' := ActionLabel,
          'actionUrl' := ActionUrl,
          'detailTable' := DetailTable
        }) ->
    #{ 'key' => Key,
       'status' => Status,
       'title' => Title,
       'message' => Message,
       'meta' => Meta,
       'actionLabel' => ActionLabel,
       'actionUrl' => ActionUrl,
       'detailTable' => DetailTable
     }.
