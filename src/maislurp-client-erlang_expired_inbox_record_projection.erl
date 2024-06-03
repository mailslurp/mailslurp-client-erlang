-module(maislurp-client-erlang_expired_inbox_record_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_expired_inbox_record_projection/0]).

-type maislurp-client-erlang_expired_inbox_record_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddress' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'emailAddress' := EmailAddress,
          'userId' := UserId,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'emailAddress' => EmailAddress,
       'userId' => UserId,
       'id' => Id
     }.
