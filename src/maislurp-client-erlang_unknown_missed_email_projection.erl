-module(maislurp-client-erlang_unknown_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_unknown_missed_email_projection/0]).

-type maislurp-client-erlang_unknown_missed_email_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'subject' => binary(),
       'to' => list()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'from' := From,
          'id' := Id,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'createdAt' => CreatedAt,
       'from' => From,
       'id' => Id,
       'subject' => Subject,
       'to' => To
     }.
