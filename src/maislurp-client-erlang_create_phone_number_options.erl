-module(maislurp-client-erlang_create_phone_number_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_phone_number_options/0]).

-type maislurp-client-erlang_create_phone_number_options() ::
    #{ 'phoneCountry' := binary(),
       'name' => binary(),
       'description' => binary(),
       'schedule' => binary(),
       'phoneNumberEndpointOverride' => binary(),
       'phoneNumberVariant' => binary()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'name' := Name,
          'description' := Description,
          'schedule' := Schedule,
          'phoneNumberEndpointOverride' := PhoneNumberEndpointOverride,
          'phoneNumberVariant' := PhoneNumberVariant
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'name' => Name,
       'description' => Description,
       'schedule' => Schedule,
       'phoneNumberEndpointOverride' => PhoneNumberEndpointOverride,
       'phoneNumberVariant' => PhoneNumberVariant
     }.
