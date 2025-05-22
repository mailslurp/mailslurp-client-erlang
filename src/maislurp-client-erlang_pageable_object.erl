-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'pageSize' => integer(),
       'paged' => boolean(),
       'pageNumber' => integer(),
       'unpaged' => boolean(),
       'offset' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object()
     }.

encode(#{ 'pageSize' := PageSize,
          'paged' := Paged,
          'pageNumber' := PageNumber,
          'unpaged' := Unpaged,
          'offset' := Offset,
          'sort' := Sort
        }) ->
    #{ 'pageSize' => PageSize,
       'paged' => Paged,
       'pageNumber' => PageNumber,
       'unpaged' => Unpaged,
       'offset' => Offset,
       'sort' => Sort
     }.
