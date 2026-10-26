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
       'phoneLineFilter' => binary(),
       'environmentAccountId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'name' := Name,
          'description' := Description,
          'tags' := Tags,
          'schedule' := Schedule,
          'phoneNumberEndpointOverride' := PhoneNumberEndpointOverride,
          'phoneNumberVariant' := PhoneNumberVariant,
          'phoneProvider' := PhoneProvider,
          'phoneLineFilter' := PhoneLineFilter,
          'environmentAccountId' := EnvironmentAccountId
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'name' => Name,
       'description' => Description,
       'tags' => Tags,
       'schedule' => Schedule,
       'phoneNumberEndpointOverride' => PhoneNumberEndpointOverride,
       'phoneNumberVariant' => PhoneNumberVariant,
       'phoneProvider' => PhoneProvider,
       'phoneLineFilter' => PhoneLineFilter,
       'environmentAccountId' => EnvironmentAccountId
     }.
