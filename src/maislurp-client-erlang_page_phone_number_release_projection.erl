-module(maislurp-client-erlang_page_phone_number_release_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_page_phone_number_release_projection/0]).

-type maislurp-client-erlang_page_phone_number_release_projection() ::
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
