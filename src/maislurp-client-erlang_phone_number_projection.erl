-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneCountry' := binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'phoneCountry' := PhoneCountry
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'phoneCountry' => PhoneCountry
     }.
