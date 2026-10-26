-module(maislurp-client-erlang_phone_pool_lease_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_pool_lease_dto/0]).

-type maislurp-client-erlang_phone_pool_lease_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'poolId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'phoneName' => binary(),
       'leaseName' => binary(),
       'leaseOwner' => binary(),
       'leasedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'poolId' := PoolId,
          'phoneNumberId' := PhoneNumberId,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'phoneName' := PhoneName,
          'leaseName' := LeaseName,
          'leaseOwner' := LeaseOwner,
          'leasedAt' := LeasedAt,
          'expiresAt' := ExpiresAt
        }) ->
    #{ 'id' => Id,
       'poolId' => PoolId,
       'phoneNumberId' => PhoneNumberId,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'phoneName' => PhoneName,
       'leaseName' => LeaseName,
       'leaseOwner' => LeaseOwner,
       'leasedAt' => LeasedAt,
       'expiresAt' => ExpiresAt
     }.
