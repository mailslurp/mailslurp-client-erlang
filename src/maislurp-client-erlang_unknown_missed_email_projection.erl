-module(maislurp-client-erlang_unknown_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_unknown_missed_email_projection/0]).

-type maislurp-client-erlang_unknown_missed_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'from' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary(),
       'to' => list()
     }.

encode(#{ 'id' := Id,
          'from' := From,
          'createdAt' := CreatedAt,
          'subject' := Subject,
          'to' := To
        }) ->
    #{ 'id' => Id,
       'from' => From,
       'createdAt' => CreatedAt,
       'subject' => Subject,
       'to' => To
     }.
