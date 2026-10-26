-module(maislurp-client-erlang_phone_number_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_projection/0]).

-type maislurp-client-erlang_phone_number_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'tags' => list(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneCountry' := binary(),
       'phoneNumber' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'providerLabel' => binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'tags' := Tags,
          'userId' := UserId,
          'phoneCountry' := PhoneCountry,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'providerLabel' := ProviderLabel,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'tags' => Tags,
       'userId' => UserId,
       'phoneCountry' => PhoneCountry,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'providerLabel' => ProviderLabel,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode
     }.
