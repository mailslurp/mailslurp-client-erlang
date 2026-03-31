-module(maislurp-client-erlang_create_phone_number_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_phone_number_options/0]).

-type maislurp-client-erlang_create_phone_number_options() ::
    #{ 'phoneCountry' := binary(),
       'name' => binary(),
       'description' => binary(),
       'tags' => list(),
       'schedule' => binary(),
       'phoneNumberEndpointOverride' => binary(),
       'phoneNumberVariant' => binary(),
       'phoneProvider' => binary(),
       'phoneLineFilter' => binary()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'name' := Name,
          'description' := Description,
          'tags' := Tags,
          'schedule' := Schedule,
          'phoneNumberEndpointOverride' := PhoneNumberEndpointOverride,
          'phoneNumberVariant' := PhoneNumberVariant,
          'phoneProvider' := PhoneProvider,
          'phoneLineFilter' := PhoneLineFilter
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'name' => Name,
       'description' => Description,
       'tags' => Tags,
       'schedule' => Schedule,
       'phoneNumberEndpointOverride' => PhoneNumberEndpointOverride,
       'phoneNumberVariant' => PhoneNumberVariant,
       'phoneProvider' => PhoneProvider,
       'phoneLineFilter' => PhoneLineFilter
     }.
