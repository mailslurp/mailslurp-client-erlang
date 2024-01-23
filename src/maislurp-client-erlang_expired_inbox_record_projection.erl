-module(maislurp-client-erlang_expired_inbox_record_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_expired_inbox_record_projection/0]).

-type maislurp-client-erlang_expired_inbox_record_projection() ::
    #{ 'emailAddress' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
