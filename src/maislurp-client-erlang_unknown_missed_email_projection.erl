-module(maislurp-client-erlang_unknown_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_unknown_missed_email_projection/0]).

-type maislurp-client-erlang_unknown_missed_email_projection() ::
    #{ 'to' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary()
     }.

encode(#{ 'to' := To,
          'createdAt' := CreatedAt,
          'subject' := Subject,
          'id' := Id,
          'from' := From
        }) ->
    #{ 'to' => To,
       'createdAt' => CreatedAt,
       'subject' => Subject,
       'id' => Id,
       'from' => From
     }.
