-module(maislurp-client-erlang_page_inbox_tags).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_inbox_tags/0]).

-type maislurp-client-erlang_page_inbox_tags() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalPages' := integer(),
       'totalElements' := integer(),
       'last' => boolean(),
       'first' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'numberOfElements' => integer(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalPages' := TotalPages,
          'totalElements' := TotalElements,
          'last' := Last,
          'first' := First,
          'size' := Size,
          'number' := Number,
          'sort' := Sort,
          'numberOfElements' := NumberOfElements,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalPages' => TotalPages,
       'totalElements' => TotalElements,
       'last' => Last,
       'first' => First,
       'size' => Size,
       'number' => Number,
       'sort' => Sort,
       'numberOfElements' => NumberOfElements,
       'empty' => Empty
     }.
