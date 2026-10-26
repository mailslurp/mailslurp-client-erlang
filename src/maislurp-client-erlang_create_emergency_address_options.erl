-module(maislurp-client-erlang_create_emergency_address_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_emergency_address_options/0]).

-type maislurp-client-erlang_create_emergency_address_options() ::
    #{ 'customerName' := binary(),
       'address1' := binary(),
       'city' := binary(),
       'region' := binary(),
       'postalCode' := binary(),
       'isoCountryCode' := binary(),
       'displayName' => binary()
     }.

encode(#{ 'customerName' := CustomerName,
          'address1' := Address1,
          'city' := City,
          'region' := Region,
          'postalCode' := PostalCode,
          'isoCountryCode' := IsoCountryCode,
          'displayName' := DisplayName
        }) ->
    #{ 'customerName' => CustomerName,
       'address1' => Address1,
       'city' => City,
       'region' => Region,
       'postalCode' => PostalCode,
       'isoCountryCode' => IsoCountryCode,
       'displayName' => DisplayName
     }.
