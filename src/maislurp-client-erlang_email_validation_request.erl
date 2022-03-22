-module(maislurp-client-erlang_email_validation_request).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_validation_request/0]).

-type maislurp-client-erlang_email_validation_request() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'isValid' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'emailAddress' := EmailAddress,
          'isValid' := IsValid,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'emailAddress' => EmailAddress,
       'isValid' => IsValid,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
