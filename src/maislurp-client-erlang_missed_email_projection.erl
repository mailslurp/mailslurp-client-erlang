-module(maislurp-client-erlang_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email_projection/0]).

-type maislurp-client-erlang_missed_email_projection() ::
    #{ 'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'subject' := Subject,
          'createdAt' := CreatedAt,
          'userId' := UserId,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'subject' => Subject,
       'createdAt' => CreatedAt,
       'userId' => UserId,
       'id' => Id,
       'from' => From
     }.
