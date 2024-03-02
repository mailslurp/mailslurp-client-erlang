-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'id' => Id
     }.
