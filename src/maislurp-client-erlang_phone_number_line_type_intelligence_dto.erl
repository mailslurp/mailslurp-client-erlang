-module(maislurp-client-erlang_phone_number_line_type_intelligence_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_line_type_intelligence_dto/0]).

-type maislurp-client-erlang_phone_number_line_type_intelligence_dto() ::
    #{ 'type' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary(),
       'errorCode' => integer()
     }.

encode(#{ 'type' := Type,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode,
          'errorCode' := ErrorCode
        }) ->
    #{ 'type' => Type,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode,
       'errorCode' => ErrorCode
     }.
