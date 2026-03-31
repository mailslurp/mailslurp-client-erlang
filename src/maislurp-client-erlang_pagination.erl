-module(maislurp-client-erlang_pagination).

-export([encode/1]).

-export_type([maislurp-client-erlang_pagination/0]).

-type maislurp-client-erlang_pagination() ::
    #{ 'pageNumber' := integer(),
       'pageSize' := integer()
     }.

encode(#{ 'pageNumber' := PageNumber,
          'pageSize' := PageSize
        }) ->
    #{ 'pageNumber' => PageNumber,
       'pageSize' => PageSize
     }.
