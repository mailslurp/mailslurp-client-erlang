-module(maislurp-client-erlang_page_bounced_recipients).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_bounced_recipients/0]).

-type maislurp-client-erlang_page_bounced_recipients() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalPages' := integer(),
       'totalElements' := integer(),
       'last' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'first' => boolean(),
       'numberOfElements' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'last' := Last,
          'size' := Size,
          'number' := Number,
          'first' := First,
          'numberOfElements' := NumberOfElements,
          'sort' := Sort,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'size' => Size,
       'number' => Number,
       'first' => First,
       'numberOfElements' => NumberOfElements,
       'sort' => Sort,
       'empty' => Empty
     }.
