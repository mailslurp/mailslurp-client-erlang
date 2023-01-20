-module(maislurp-client-erlang_emergency_address_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_emergency_address_dto/0]).

-type maislurp-client-erlang_emergency_address_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'address1' := binary(),
       'phoneCountry' := binary()
     }.

encode(#{ 'id' := Id,
          'address1' := Address1,
          'phoneCountry' := PhoneCountry
        }) ->
    #{ 'id' => Id,
       'address1' => Address1,
       'phoneCountry' => PhoneCountry
     }.
