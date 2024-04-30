-module(maislurp-client-erlang_page_email_validation_request).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_email_validation_request/0]).

-type maislurp-client-erlang_page_email_validation_request() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalPages' := integer(),
       'totalElements' := integer(),
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
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
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
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'numberOfElements' => NumberOfElements,
       'first' => First,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'empty' => Empty
     }.
