-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'offset' => integer(),
       'pageSize' => integer(),
       'unpaged' => boolean(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'paged' => boolean(),
       'pageNumber' => integer()
     }.

encode(#{ 'offset' := Offset,
          'pageSize' := PageSize,
          'unpaged' := Unpaged,
          'sort' := Sort,
          'paged' := Paged,
          'pageNumber' := PageNumber
        }) ->
    #{ 'offset' => Offset,
       'pageSize' => PageSize,
       'unpaged' => Unpaged,
       'sort' => Sort,
       'paged' => Paged,
       'pageNumber' => PageNumber
     }.
