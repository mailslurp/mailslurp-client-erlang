-module(maislurp-client-erlang_page_bounced_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_bounced_email/0]).

-type maislurp-client-erlang_page_bounced_email() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable:maislurp-client-erlang_pageable(),
       'last' => boolean(),
       'totalPages' => integer(),
       'totalElements' => integer(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'first' => boolean(),
       'numberOfElements' => integer(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'last' := Last,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'first' := First,
          'numberOfElements' := NumberOfElements,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'last' => Last,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'first' => First,
       'numberOfElements' => NumberOfElements,
       'empty' => Empty
     }.
