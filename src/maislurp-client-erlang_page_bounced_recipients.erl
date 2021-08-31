-module(maislurp-client-erlang_page_bounced_recipients).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_bounced_recipients/0]).

-type maislurp-client-erlang_page_bounced_recipients() ::
    #{ 'content' => list(),
       'empty' => boolean(),
       'first' => boolean(),
       'last' => boolean(),
       'number' => integer(),
       'numberOfElements' => integer(),
       'pageable' => maislurp-client-erlang_pageable:maislurp-client-erlang_pageable(),
       'size' => integer(),
       'sort' => maislurp-client-erlang_sort:maislurp-client-erlang_sort(),
       'totalElements' => integer(),
       'totalPages' => integer()
     }.

encode(#{ 'content' := Content,
          'empty' := Empty,
          'first' := First,
          'last' := Last,
          'number' := Number,
          'numberOfElements' := NumberOfElements,
          'pageable' := Pageable,
          'size' := Size,
          'sort' := Sort,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages
        }) ->
    #{ 'content' => Content,
       'empty' => Empty,
       'first' => First,
       'last' => Last,
       'number' => Number,
       'numberOfElements' => NumberOfElements,
       'pageable' => Pageable,
       'size' => Size,
       'sort' => Sort,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages
     }.