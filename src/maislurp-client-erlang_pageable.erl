-module(maislurp-client-erlang_pageable).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable/0]).

-type maislurp-client-erlang_pageable() ::
    #{ 'offset' => integer(),
       'pageNumber' => integer(),
       'pageSize' => integer(),
       'paged' => boolean(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'unpaged' => boolean()
     }.

encode(#{ 'offset' := Offset,
          'pageNumber' := PageNumber,
          'pageSize' := PageSize,
          'paged' := Paged,
          'sort' := Sort,
          'unpaged' := Unpaged
        }) ->
    #{ 'offset' => Offset,
       'pageNumber' => PageNumber,
       'pageSize' => PageSize,
       'paged' => Paged,
       'sort' => Sort,
       'unpaged' => Unpaged
     }.
