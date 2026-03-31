-module(maislurp-client-erlang_phone_number_release_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_release_projection/0]).

-type maislurp-client-erlang_phone_number_release_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneCountry' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumber' => binary(),
       'subscriptionSchedule' => binary(),
       'planCurrency' => binary()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'userId' := UserId,
          'phoneCountry' := PhoneCountry,
          'createdAt' := CreatedAt,
          'phoneNumber' := PhoneNumber,
          'subscriptionSchedule' := SubscriptionSchedule,
          'planCurrency' := PlanCurrency
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'userId' => UserId,
       'phoneCountry' => PhoneCountry,
       'createdAt' => CreatedAt,
       'phoneNumber' => PhoneNumber,
       'subscriptionSchedule' => SubscriptionSchedule,
       'planCurrency' => PlanCurrency
     }.
