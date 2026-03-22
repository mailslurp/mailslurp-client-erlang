-module(maislurp-client-erlang_phone_provisioning_job_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_provisioning_job_item_dto/0]).

-type maislurp-client-erlang_phone_provisioning_job_item_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'providerLabel' => binary(),
       'status' := binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'failureMessage' => binary()
     }.

encode(#{ 'id' := Id,
          'phoneNumber' := PhoneNumber,
          'providerLabel' := ProviderLabel,
          'status' := Status,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode,
          'phoneNumberId' := PhoneNumberId,
          'failureMessage' := FailureMessage
        }) ->
    #{ 'id' => Id,
       'phoneNumber' => PhoneNumber,
       'providerLabel' => ProviderLabel,
       'status' => Status,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode,
       'phoneNumberId' => PhoneNumberId,
       'failureMessage' => FailureMessage
     }.
