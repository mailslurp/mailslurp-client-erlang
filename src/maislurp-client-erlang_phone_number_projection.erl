-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'createdAt' := CreatedAt,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'createdAt' => CreatedAt,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'name' => Name,
       'id' => Id
     }.
