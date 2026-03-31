-module(maislurp-client-erlang_imap_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_email_projection/0]).

-type maislurp-client-erlang_imap_email_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' => boolean(),
       'uid' := integer(),
       'seqNum' := integer()
     }.

encode(#{ 'id' := Id,
          'createdAt' := CreatedAt,
          'read' := Read,
          'uid' := Uid,
          'seqNum' := SeqNum
        }) ->
    #{ 'id' => Id,
       'createdAt' => CreatedAt,
       'read' => Read,
       'uid' => Uid,
       'seqNum' => SeqNum
     }.
