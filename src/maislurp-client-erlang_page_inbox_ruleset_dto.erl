-module(maislurp-client-erlang_page_inbox_ruleset_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_inbox_ruleset_dto/0]).

-type maislurp-client-erlang_page_inbox_ruleset_dto() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'total' => integer(),
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
          'total' := Total,
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
       'total' => Total,
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
