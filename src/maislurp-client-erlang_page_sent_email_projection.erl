-module(maislurp-client-erlang_page_sent_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_sent_email_projection/0]).

-type maislurp-client-erlang_page_sent_email_projection() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable:maislurp-client-erlang_pageable(),
       'size' => integer(),
       'number' => integer(),
       'numberOfElements' => integer(),
       'totalElements' => integer(),
       'totalPages' => integer(),
       'last' => boolean(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'first' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'size' := Size,
          'number' := Number,
          'numberOfElements' := NumberOfElements,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'last' := Last,
          'sort' := Sort,
          'first' := First,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'size' => Size,
       'number' => Number,
       'numberOfElements' => NumberOfElements,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'last' => Last,
       'sort' => Sort,
       'first' => First,
       'empty' => Empty
     }.
