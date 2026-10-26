-module(maislurp-client-erlang_unknown_missed_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_unknown_missed_email_projection/0]).

-type maislurp-client-erlang_unknown_missed_email_projection() ::
    #{ 'subject' => binary(),
       'from' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'subject' := Subject,
          'from' := From,
          'id' := Id,
          'to' := To,
          'createdAt' := CreatedAt
        }) ->
    #{ 'subject' => Subject,
       'from' => From,
       'id' => Id,
       'to' => To,
       'createdAt' => CreatedAt
     }.
