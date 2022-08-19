-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'offset' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'pageNumber' => integer(),
       'pageSize' => integer(),
       'paged' => boolean(),
       'unpaged' => boolean()
     }.

encode(#{ 'offset' := Offset,
          'sort' := Sort,
          'pageNumber' := PageNumber,
          'pageSize' := PageSize,
          'paged' := Paged,
          'unpaged' := Unpaged
        }) ->
    #{ 'offset' => Offset,
       'sort' => Sort,
       'pageNumber' => PageNumber,
       'pageSize' => PageSize,
       'paged' => Paged,
       'unpaged' => Unpaged
     }.
