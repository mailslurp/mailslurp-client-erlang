-module(maislurp-client-erlang_bounce_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_bounce_recipient_projection/0]).

-type maislurp-client-erlang_bounce_recipient_projection() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'action' => binary(),
       'status' => binary(),
       'sentEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'recipient' := binary()
     }.

encode(#{ 'id' := Id,
          'action' := Action,
          'status' := Status,
          'sentEmailId' := SentEmailId,
          'createdAt' := CreatedAt,
          'recipient' := Recipient
        }) ->
    #{ 'id' => Id,
       'action' => Action,
       'status' => Status,
       'sentEmailId' => SentEmailId,
       'createdAt' => CreatedAt,
       'recipient' => Recipient
     }.
