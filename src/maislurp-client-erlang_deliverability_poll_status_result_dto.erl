-module(maislurp-client-erlang_deliverability_poll_status_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_poll_status_result_dto/0]).

-type maislurp-client-erlang_deliverability_poll_status_result_dto() ::
    #{ 'test' := maislurp-client-erlang_deliverability_test_dto:maislurp-client-erlang_deliverability_test_dto(),
       'cached' := boolean(),
       'cacheWindowSeconds' := integer(),
       'nextRefreshAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'test' := Test,
          'cached' := Cached,
          'cacheWindowSeconds' := CacheWindowSeconds,
          'nextRefreshAt' := NextRefreshAt
        }) ->
    #{ 'test' => Test,
       'cached' => Cached,
       'cacheWindowSeconds' => CacheWindowSeconds,
       'nextRefreshAt' => NextRefreshAt
     }.
