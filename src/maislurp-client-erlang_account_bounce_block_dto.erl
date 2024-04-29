-module(maislurp-client-erlang_account_bounce_block_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_account_bounce_block_dto/0]).

-type maislurp-client-erlang_account_bounce_block_dto() ::
    #{ 'isSendingBlocked' := boolean(),
       'bounceCount' := integer(),
       'bounceCountToday' := integer(),
       'maximumDailyBounces' := integer(),
       'maximumAccountBounces' := integer()
     }.

encode(#{ 'isSendingBlocked' := IsSendingBlocked,
          'bounceCount' := BounceCount,
          'bounceCountToday' := BounceCountToday,
          'maximumDailyBounces' := MaximumDailyBounces,
          'maximumAccountBounces' := MaximumAccountBounces
        }) ->
    #{ 'isSendingBlocked' => IsSendingBlocked,
       'bounceCount' => BounceCount,
       'bounceCountToday' => BounceCountToday,
       'maximumDailyBounces' => MaximumDailyBounces,
       'maximumAccountBounces' => MaximumAccountBounces
     }.
