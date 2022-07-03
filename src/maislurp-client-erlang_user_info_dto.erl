-module(maislurp-client-erlang_user_info_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_user_info_dto/0]).

-type maislurp-client-erlang_user_info_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'accountState' := binary(),
       'subscriptionType' => binary(),
       'accountType' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'accountState' := AccountState,
          'subscriptionType' := SubscriptionType,
          'accountType' := AccountType,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'accountState' => AccountState,
       'subscriptionType' => SubscriptionType,
       'accountType' => AccountType,
       'createdAt' => CreatedAt
     }.
