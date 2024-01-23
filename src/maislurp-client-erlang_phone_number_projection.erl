-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
