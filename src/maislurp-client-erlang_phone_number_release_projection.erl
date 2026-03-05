-module(maislurp-client-erlang_phone_number_release_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_release_projection/0]).

-type maislurp-client-erlang_phone_number_release_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneCountry' := binary(),
       'phoneNumber' => binary(),
       'subscriptionSchedule' => binary(),
       'planCurrency' => binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'createdAt' := CreatedAt,
          'phoneCountry' := PhoneCountry,
          'phoneNumber' := PhoneNumber,
          'subscriptionSchedule' := SubscriptionSchedule,
          'planCurrency' := PlanCurrency,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'createdAt' => CreatedAt,
       'phoneCountry' => PhoneCountry,
       'phoneNumber' => PhoneNumber,
       'subscriptionSchedule' => SubscriptionSchedule,
       'planCurrency' => PlanCurrency,
       'name' => Name,
       'id' => Id
     }.
