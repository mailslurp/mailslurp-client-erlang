-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
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
