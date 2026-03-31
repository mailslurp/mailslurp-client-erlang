-module(maislurp-client-erlang_emergency_address).

-export([encode/1]).

-export_type([maislurp-client-erlang_emergency_address/0]).

-type maislurp-client-erlang_emergency_address() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sid' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'displayName' := binary(),
       'customerName' := binary(),
       'address1' := binary(),
       'city' := binary(),
       'region' := binary(),
       'postalCode' := binary(),
       'phoneCountry' := binary(),
       'accountSid' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'sid' := Sid,
          'userId' := UserId,
          'displayName' := DisplayName,
          'customerName' := CustomerName,
          'address1' := Address1,
          'city' := City,
          'region' := Region,
          'postalCode' := PostalCode,
          'phoneCountry' := PhoneCountry,
          'accountSid' := AccountSid,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'sid' => Sid,
       'userId' => UserId,
       'displayName' => DisplayName,
       'customerName' => CustomerName,
       'address1' => Address1,
       'city' => City,
       'region' => Region,
       'postalCode' => PostalCode,
       'phoneCountry' => PhoneCountry,
       'accountSid' => AccountSid,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
