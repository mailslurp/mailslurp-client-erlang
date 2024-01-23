-module(maislurp-client-erlang_pageable_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_pageable_object/0]).

-type maislurp-client-erlang_pageable_object() ::
    #{ 'pageNumber' => integer(),
       'pageSize' => integer(),
       'unpaged' => boolean(),
       'paged' => boolean(),
       'offset' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object()
     }.

encode(#{ 'pageNumber' := PageNumber,
          'pageSize' := PageSize,
          'unpaged' := Unpaged,
          'paged' := Paged,
          'offset' := Offset,
          'sort' := Sort
        }) ->
    #{ 'pageNumber' => PageNumber,
       'pageSize' => PageSize,
       'unpaged' => Unpaged,
       'paged' => Paged,
       'offset' => Offset,
       'sort' => Sort
     }.
