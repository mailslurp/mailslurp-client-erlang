-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'pageSize' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'paged' => boolean(),
       'pageNumber' => integer(),
       'unpaged' => boolean(),
       'offset' => integer()
     }.

encode(#{ 'pageSize' := PageSize,
          'sort' := Sort,
          'paged' := Paged,
          'pageNumber' := PageNumber,
          'unpaged' := Unpaged,
          'offset' := Offset
        }) ->
    #{ 'pageSize' => PageSize,
       'sort' => Sort,
       'paged' => Paged,
       'pageNumber' => PageNumber,
       'unpaged' => Unpaged,
       'offset' => Offset
     }.
