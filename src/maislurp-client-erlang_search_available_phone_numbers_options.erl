-module(maislurp-client-erlang_search_available_phone_numbers_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_search_available_phone_numbers_options/0]).

-type maislurp-client-erlang_search_available_phone_numbers_options() ::
    #{ 'phoneCountry' := binary(),
       'phoneVariant' => binary(),
       'qualityFilter' => binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary(),
       'providerLabels' => list(),
       'limit' => integer()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'qualityFilter' := QualityFilter,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode,
          'providerLabels' := ProviderLabels,
          'limit' := Limit
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'qualityFilter' => QualityFilter,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode,
       'providerLabels' => ProviderLabels,
       'limit' => Limit
     }.
