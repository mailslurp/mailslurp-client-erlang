-module(maislurp-client-erlang_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email_projection/0]).

-type maislurp-client-erlang_missed_email_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'userId' := UserId,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'createdAt' => CreatedAt,
       'userId' => UserId,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
