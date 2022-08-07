-module(maislurp-client-erlang_page_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_sent_email_projection/0]).

-type maislurp-client-erlang_page_sent_email_projection() ::
    #{ 'content' := list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'total' => integer(),
       'size' := integer(),
       'number' := integer(),
       'numberOfElements' := integer(),
       'totalPages' := integer(),
       'totalElements' := integer(),
       'last' => boolean(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'first' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'total' := Total,
          'size' := Size,
          'number' := Number,
          'numberOfElements' := NumberOfElements,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'last' := Last,
          'sort' := Sort,
          'first' := First,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'total' => Total,
       'size' => Size,
       'number' => Number,
       'numberOfElements' => NumberOfElements,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'sort' => Sort,
       'first' => First,
       'empty' => Empty
     }.
