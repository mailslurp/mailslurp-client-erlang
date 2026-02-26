-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'pageSize' => integer(),
       'paged' => boolean(),
       'pageNumber' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'unpaged' => boolean(),
       'offset' => integer()
     }.

encode(#{ 'pageSize' := PageSize,
          'paged' := Paged,
          'pageNumber' := PageNumber,
          'sort' := Sort,
          'unpaged' := Unpaged,
          'offset' := Offset
        }) ->
    #{ 'pageSize' => PageSize,
       'paged' => Paged,
       'pageNumber' => PageNumber,
       'sort' => Sort,
       'unpaged' => Unpaged,
       'offset' => Offset
     }.
