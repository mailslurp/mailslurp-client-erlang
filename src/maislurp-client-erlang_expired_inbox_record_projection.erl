-module(maislurp-client-erlang_expired_inbox_record_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_expired_inbox_record_projection/0]).

-type maislurp-client-erlang_expired_inbox_record_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'id' := Id,
          'userId' := UserId
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'id' => Id,
       'userId' => UserId
     }.
