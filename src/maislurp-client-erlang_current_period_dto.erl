-module(maislurp-client-erlang_current_period_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_current_period_dto/0]).

-type maislurp-client-erlang_current_period_dto() ::
    #{ 'currentPeriodStart' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'currentPeriodEnd' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'currentPeriodStart' := CurrentPeriodStart,
          'currentPeriodEnd' := CurrentPeriodEnd
        }) ->
    #{ 'currentPeriodStart' => CurrentPeriodStart,
       'currentPeriodEnd' => CurrentPeriodEnd
     }.
