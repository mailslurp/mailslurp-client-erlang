-module(maislurp-client-erlang_page_ai_transform_result_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_ai_transform_result_projection/0]).

-type maislurp-client-erlang_page_ai_transform_result_projection() ::
    #{ 'content' => list(),
       'pageable' => maislurp-client-erlang_pageable_object:maislurp-client-erlang_pageable_object(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'last' => boolean(),
       'numberOfElements' => integer(),
       'sort' => maislurp-client-erlang_sort_object:maislurp-client-erlang_sort_object(),
       'first' => boolean(),
       'size' => integer(),
       'number' => integer(),
       'empty' => boolean()
     }.

encode(#{ 'content' := Content,
          'pageable' := Pageable,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'last' := Last,
          'numberOfElements' := NumberOfElements,
          'sort' := Sort,
          'first' := First,
          'size' := Size,
          'number' := Number,
          'empty' := Empty
        }) ->
    #{ 'content' => Content,
       'pageable' => Pageable,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'last' => Last,
       'numberOfElements' => NumberOfElements,
       'sort' => Sort,
       'first' => First,
       'size' => Size,
       'number' => Number,
       'empty' => Empty
     }.
