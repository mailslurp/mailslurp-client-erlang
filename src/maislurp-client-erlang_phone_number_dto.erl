-module(maislurp-client-erlang_phone_number_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_dto/0]).

-type maislurp-client-erlang_phone_number_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'description' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'complianceAddress' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emergencyAddress' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'phonePlan' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'favourite' := boolean(),
       'phoneVariant' => binary(),
       'lineType' => binary(),
       'carrierName' => binary(),
       'mobileCountryCode' => binary(),
       'mobileNetworkCode' => binary(),
       'providerLabel' => binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'description' := Description,
          'userId' := UserId,
          'complianceAddress' := ComplianceAddress,
          'emergencyAddress' := EmergencyAddress,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'phonePlan' := PhonePlan,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'favourite' := Favourite,
          'phoneVariant' := PhoneVariant,
          'lineType' := LineType,
          'carrierName' := CarrierName,
          'mobileCountryCode' := MobileCountryCode,
          'mobileNetworkCode' := MobileNetworkCode,
          'providerLabel' := ProviderLabel
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'description' => Description,
       'userId' => UserId,
       'complianceAddress' => ComplianceAddress,
       'emergencyAddress' => EmergencyAddress,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'phonePlan' => PhonePlan,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'favourite' => Favourite,
       'phoneVariant' => PhoneVariant,
       'lineType' => LineType,
       'carrierName' => CarrierName,
       'mobileCountryCode' => MobileCountryCode,
       'mobileNetworkCode' => MobileNetworkCode,
       'providerLabel' => ProviderLabel
     }.
