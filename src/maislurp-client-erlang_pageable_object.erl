-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'unpaged' => boolean(),
       'pageSize' => integer(),
       'paged' => boolean(),
       'pageNumber' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'offset' => integer()
     }.

encode(#{ 'unpaged' := Unpaged,
          'pageSize' := PageSize,
          'paged' := Paged,
          'pageNumber' := PageNumber,
          'sort' := Sort,
          'offset' := Offset
        }) ->
    #{ 'unpaged' => Unpaged,
       'pageSize' => PageSize,
       'paged' => Paged,
       'pageNumber' => PageNumber,
       'sort' => Sort,
       'offset' => Offset
     }.
