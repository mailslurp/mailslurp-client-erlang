-module(maislurp-client-erlang_phone_number_validation_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_validation_dto/0]).

-type maislurp-client-erlang_phone_number_validation_dto() ::
    #{ 'countryCode' => binary(),
       'countryPrefix' => binary(),
       'phoneNumber' := binary(),
       'isValid' := boolean(),
       'validationErrors' => list()
     }.

encode(#{ 'countryCode' := CountryCode,
          'countryPrefix' := CountryPrefix,
          'phoneNumber' := PhoneNumber,
          'isValid' := IsValid,
          'validationErrors' := ValidationErrors
        }) ->
    #{ 'countryCode' => CountryCode,
       'countryPrefix' => CountryPrefix,
       'phoneNumber' => PhoneNumber,
       'isValid' => IsValid,
       'validationErrors' => ValidationErrors
     }.
