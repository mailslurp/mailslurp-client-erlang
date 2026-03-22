-module(maislurp-client-erlang_deliverability_entity_result_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_entity_result_page_dto/0]).

-type maislurp-client-erlang_deliverability_entity_result_page_dto() ::
    #{ 'test' := maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(),
       'content' := list(),
       'page' := integer(),
       'size' := integer(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'matched' => boolean(),
       'cached' := boolean(),
       'nextRefreshAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'test' := Test,
          'content' := Content,
          'page' := Page,
          'size' := Size,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'matched' := Matched,
          'cached' := Cached,
          'nextRefreshAt' := NextRefreshAt
        }) ->
    #{ 'test' => Test,
       'content' => Content,
       'page' => Page,
       'size' => Size,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'matched' => Matched,
       'cached' => Cached,
       'nextRefreshAt' => NextRefreshAt
     }.
