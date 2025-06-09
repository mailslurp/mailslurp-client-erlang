-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'paged' => boolean(),
       'pageNumber' => integer(),
       'pageSize' => integer(),
       'unpaged' => boolean(),
       'offset' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object()
     }.

encode(#{ 'paged' := Paged,
          'pageNumber' := PageNumber,
          'pageSize' := PageSize,
          'unpaged' := Unpaged,
          'offset' := Offset,
          'sort' := Sort
        }) ->
    #{ 'paged' => Paged,
       'pageNumber' => PageNumber,
       'pageSize' => PageSize,
       'unpaged' => Unpaged,
       'offset' => Offset,
       'sort' => Sort
     }.
