-module(maislurp-client-erlang_page_connector).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_connector/0]).

-type maislurp-client-erlang_page_connector() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'last' => boolean(),
       'numberOfElements' => integer(),
       'first' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'last' := Last,
          'numberOfElements' := NumberOfElements,
          'first' := First,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'last' => Last,
       'numberOfElements' => NumberOfElements,
       'first' => First,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'empty' => Empty
     }.
