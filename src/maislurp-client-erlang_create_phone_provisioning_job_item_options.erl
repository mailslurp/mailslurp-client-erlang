-module(maislurp-client-erlang_create_phone_provisioning_job_item_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_phone_provisioning_job_item_options/0]).

-type maislurp-client-erlang_create_phone_provisioning_job_item_options() ::
    #{ 'phoneNumber' := binary(),
       'providerLabel' => binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary()
     }.

encode(#{ 'phoneNumber' := PhoneNumber,
          'providerLabel' := ProviderLabel,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode
        }) ->
    #{ 'phoneNumber' => PhoneNumber,
       'providerLabel' => ProviderLabel,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode
     }.
