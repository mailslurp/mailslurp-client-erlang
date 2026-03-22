-module(maislurp-client-erlang_available_phone_number_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_available_phone_number_dto/0]).

-type maislurp-client-erlang_available_phone_number_dto() ::
    #{ 'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'phoneVariant' => binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary(),
       'providerLabel' => binary()
     }.

encode(#{ 'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode,
          'providerLabel' := ProviderLabel
        }) ->
    #{ 'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode,
       'providerLabel' => ProviderLabel
     }.
