-module(maislurp-client-erlang_page_connector).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_connector/0]).

-type maislurp-client-erlang_page_connector() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalPages' := integer(),
       'totalElements' := integer(),
       'last' => boolean(),
       'numberOfElements' => integer(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'first' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'last' := Last,
          'numberOfElements' := NumberOfElements,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'first' := First,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'numberOfElements' => NumberOfElements,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'first' => First,
       'empty' => Empty
     }.
