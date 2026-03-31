-module(maislurp-client-erlang_phone_provisioning_job_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_provisioning_job_dto/0]).

-type maislurp-client-erlang_phone_provisioning_job_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneCountry' := binary(),
       'phoneVariant' => binary(),
       'status' := binary(),
       'requestedCount' := integer(),
       'attemptedCount' := integer(),
       'succeededCount' := integer(),
       'failedCount' := integer(),
       'unavailableCount' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'items' := list()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneCountry' := PhoneCountry,
          'phoneVariant' := PhoneVariant,
          'status' := Status,
          'requestedCount' := RequestedCount,
          'attemptedCount' := AttemptedCount,
          'succeededCount' := SucceededCount,
          'failedCount' := FailedCount,
          'unavailableCount' := UnavailableCount,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'items' := Items
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneCountry' => PhoneCountry,
       'phoneVariant' => PhoneVariant,
       'status' => Status,
       'requestedCount' => RequestedCount,
       'attemptedCount' => AttemptedCount,
       'succeededCount' => SucceededCount,
       'failedCount' => FailedCount,
       'unavailableCount' => UnavailableCount,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'items' => Items
     }.
