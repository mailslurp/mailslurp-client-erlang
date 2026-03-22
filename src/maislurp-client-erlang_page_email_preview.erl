-module(maislurp-client-erlang_page_email_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_email_preview/0]).

-type maislurp-client-erlang_page_email_preview() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'last' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'numberOfElements' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
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
          'numberOfElements' := NumberOfElements,
          'sort' := Sort,
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
       'numberOfElements' => NumberOfElements,
       'sort' => Sort,
       'first' => First,
       'empty' => Empty
     }.
