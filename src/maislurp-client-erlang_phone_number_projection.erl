-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneCountry' := binary(),
       'phoneNumber' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneCountry' := PhoneCountry,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneCountry' => PhoneCountry,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt
     }.
