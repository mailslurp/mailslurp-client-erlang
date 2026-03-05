-module(maislurp-client-erlang_deliverability_test_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_test_page_dto/0]).

-type maislurp-client-erlang_deliverability_test_page_dto() ::
    #{ 'content' := list(),
       'page' := integer(),
       'size' := integer(),
       'totalElements' := integer(),
       'totalPages' := integer()
     }.

encode(#{ 'content' := Content,
          'page' := Page,
          'size' := Size,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages
        }) ->
    #{ 'content' => Content,
       'page' => Page,
       'size' => Size,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages
     }.
