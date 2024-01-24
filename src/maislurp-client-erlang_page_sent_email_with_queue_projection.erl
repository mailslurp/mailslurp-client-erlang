-module(maislurp-client-erlang_page_sent_email_with_queue_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_sent_email_with_queue_projection/0]).

-type maislurp-client-erlang_page_sent_email_with_queue_projection() ::
    #{ 'content' := list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'total' => integer(),
       'numberOfElements' := integer(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'size' := integer(),
       'number' := integer(),
       'last' => boolean(),
       'first' => boolean(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'total' := Total,
          'numberOfElements' := NumberOfElements,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'size' := Size,
          'number' := Number,
          'last' := Last,
          'first' := First,
          'sort' := Sort,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'total' => Total,
       'numberOfElements' => NumberOfElements,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'size' => Size,
       'number' => Number,
       'last' => Last,
       'first' => First,
       'sort' => Sort,
       'empty' => Empty
     }.
