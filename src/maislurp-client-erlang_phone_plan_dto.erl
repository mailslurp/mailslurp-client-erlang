-module(maislurp-client-erlang_phone_plan_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_plan_dto/0]).

-type maislurp-client-erlang_phone_plan_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneCountry' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneCountry' := PhoneCountry,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneCountry' => PhoneCountry,
       'createdAt' => CreatedAt
     }.
