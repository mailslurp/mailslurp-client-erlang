-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry
     }.
