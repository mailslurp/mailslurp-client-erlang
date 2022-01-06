-module(maislurp-client-erlang_pageable).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable/0]).

-type maislurp-client-erlang_pageable() ::
    #{ 'offset' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'paged' => boolean(),
       'unpaged' => boolean(),
       'pageNumber' => integer(),
       'pageSize' => integer()
     }.

encode(#{ 'offset' := Offset,
          'sort' := Sort,
          'paged' := Paged,
          'unpaged' := Unpaged,
          'pageNumber' := PageNumber,
          'pageSize' := PageSize
        }) ->
    #{ 'offset' => Offset,
       'sort' => Sort,
       'paged' => Paged,
       'unpaged' => Unpaged,
       'pageNumber' => PageNumber,
       'pageSize' => PageSize
     }.
