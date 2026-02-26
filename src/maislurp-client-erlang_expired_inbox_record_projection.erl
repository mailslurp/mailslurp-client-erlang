-module(maislurp-client-erlang_expired_inbox_record_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_expired_inbox_record_projection/0]).

-type maislurp-client-erlang_expired_inbox_record_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'emailAddress' := EmailAddress,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'emailAddress' => EmailAddress,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
