-module(maislurp-client-erlang_page_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_email_projection/0]).

-type maislurp-client-erlang_page_email_projection() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'total' => integer(),
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
          'total' := Total,
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
       'total' => Total,
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
