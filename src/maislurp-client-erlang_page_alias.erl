-module(maislurp-client-erlang_page_alias).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_alias/0]).

-type maislurp-client-erlang_page_alias() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable:maislurp-client-erlang_pageable(),
       'totalElements' => integer(),
       'totalPages' => integer(),
       'last' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'numberOfElements' => integer(),
       'first' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'last' := Last,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'numberOfElements' := NumberOfElements,
          'first' := First,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'last' => Last,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'numberOfElements' => NumberOfElements,
       'first' => First,
       'empty' => Empty
     }.
