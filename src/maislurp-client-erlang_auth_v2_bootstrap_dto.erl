-module(maislurp-client-erlang_auth_v2_bootstrap_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_auth_v2_bootstrap_dto/0]).

-type maislurp-client-erlang_auth_v2_bootstrap_dto() ::
    #{ 'bootstrap' := maislurp-client-erlang_auth_bootstrap_dto:maislurp-client-erlang_auth_bootstrap_dto(),
       'returnTo' := binary(),
       'sessionExpiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'bootstrap' := Bootstrap,
          'returnTo' := ReturnTo,
          'sessionExpiresAt' := SessionExpiresAt
        }) ->
    #{ 'bootstrap' => Bootstrap,
       'returnTo' => ReturnTo,
       'sessionExpiresAt' => SessionExpiresAt
     }.
