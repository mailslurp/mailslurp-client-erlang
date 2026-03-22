-module(maislurp-client-erlang_phone_provider_capabilities_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_provider_capabilities_result/0]).

-type maislurp-client-erlang_phone_provider_capabilities_result() ::
    #{ 'providerLabel' := binary(),
       'phoneCountry' := binary(),
       'supportedVariants' := list(),
       'warning' => binary()
     }.

encode(#{ 'providerLabel' := ProviderLabel,
          'phoneCountry' := PhoneCountry,
          'supportedVariants' := SupportedVariants,
          'warning' := Warning
        }) ->
    #{ 'providerLabel' => ProviderLabel,
       'phoneCountry' => PhoneCountry,
       'supportedVariants' => SupportedVariants,
       'warning' => Warning
     }.
