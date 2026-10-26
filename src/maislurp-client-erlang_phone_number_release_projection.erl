-module(maislurp-client-erlang_phone_number_release_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_release_projection/0]).

-type maislurp-client-erlang_phone_number_release_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subscriptionSchedule' => binary(),
       'planCurrency' => binary(),
       'phoneCountry' := binary(),
       'phoneNumber' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'userId' := UserId,
          'subscriptionSchedule' := SubscriptionSchedule,
          'planCurrency' := PlanCurrency,
          'phoneCountry' := PhoneCountry,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'userId' => UserId,
       'subscriptionSchedule' => SubscriptionSchedule,
       'planCurrency' => PlanCurrency,
       'phoneCountry' => PhoneCountry,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt
     }.
