-module(maislurp-client-erlang_page_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_missed_email_projection/0]).

-type maislurp-client-erlang_page_missed_email_projection() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'total' => integer(),
       'last' => boolean(),
       'totalElements' => integer(),
       'totalPages' => integer(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'first' => boolean(),
       'numberOfElements' => integer(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'total' := Total,
          'last' := Last,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'first' := First,
          'numberOfElements' := NumberOfElements,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'total' => Total,
       'last' => Last,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'first' => First,
       'numberOfElements' => NumberOfElements,
       'empty' => Empty
     }.
