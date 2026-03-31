-module(maislurp-client-erlang_page_table_data).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_table_data/0]).

-type maislurp-client-erlang_page_table_data() ::
    #{ 'headers' := list(),
       'rows' := list(),
       'pagination' := maislurp-client-erlang_pagination:maislurp-client-erlang_pagination()
     }.

encode(#{ 'headers' := Headers,
          'rows' := Rows,
          'pagination' := Pagination
        }) ->
    #{ 'headers' => Headers,
       'rows' => Rows,
       'pagination' => Pagination
     }.
