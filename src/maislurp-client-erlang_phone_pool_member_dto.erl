-module(maislurp-client-erlang_phone_pool_member_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_pool_member_dto/0]).

-type maislurp-client-erlang_phone_pool_member_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'poolId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := binary(),
       'phoneCountry' := binary(),
       'phoneName' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'activeLease' => maislurp-client-erlang_phone_pool_lease_dto:maislurp-client-erlang_phone_pool_lease_dto()
     }.

encode(#{ 'id' := Id,
          'poolId' := PoolId,
          'phoneNumberId' := PhoneNumberId,
          'phoneNumber' := PhoneNumber,
          'phoneCountry' := PhoneCountry,
          'phoneName' := PhoneName,
          'createdAt' := CreatedAt,
          'activeLease' := ActiveLease
        }) ->
    #{ 'id' => Id,
       'poolId' => PoolId,
       'phoneNumberId' => PhoneNumberId,
       'phoneNumber' => PhoneNumber,
       'phoneCountry' => PhoneCountry,
       'phoneName' => PhoneName,
       'createdAt' => CreatedAt,
       'activeLease' => ActiveLease
     }.
