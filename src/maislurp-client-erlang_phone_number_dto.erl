-module(maislurp-client-erlang_phone_number_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_number_dto/0]).

-type maislurp-client-erlang_phone_number_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'complianceAddress' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emergencyAddress' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'phonePlan' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'complianceAddress' := ComplianceAddress,
          'emergencyAddress' := EmergencyAddress,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'phonePlan' := PhonePlan,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'complianceAddress' => ComplianceAddress,
       'emergencyAddress' => EmergencyAddress,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'phonePlan' => PhonePlan,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
