-module(maislurp-client-erlang_inbox_placement_analysis_detail_table_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analysis_detail_table_dto/0]).

-type maislurp-client-erlang_inbox_placement_analysis_detail_table_dto() ::
    #{ 'title' := binary(),
       'columns' := list(),
       'rows' := list()
     }.

encode(#{ 'title' := Title,
          'columns' := Columns,
          'rows' := Rows
        }) ->
    #{ 'title' => Title,
       'columns' => Columns,
       'rows' => Rows
     }.
