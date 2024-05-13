-module(maislurp-client-erlang_page_sent_email_with_queue_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_sent_email_with_queue_projection/0]).

-type maislurp-client-erlang_page_sent_email_with_queue_projection() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalPages' := integer(),
       'totalElements' := integer(),
       'last' => boolean(),
       'numberOfElements' => integer(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'first' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'last' := Last,
          'numberOfElements' := NumberOfElements,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'first' := First,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'numberOfElements' => NumberOfElements,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'first' => First,
       'empty' => Empty
     }.
