-module(maislurp-client-erlang_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_email_projection/0]).

-type maislurp-client-erlang_missed_email_projection() ::
    #{ 'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'userId' := UserId,
          'createdAt' := CreatedAt,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'userId' => UserId,
       'createdAt' => CreatedAt,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
