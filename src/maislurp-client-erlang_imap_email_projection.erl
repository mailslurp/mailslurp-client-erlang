-module(maislurp-client-erlang_imap_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_email_projection/0]).

-type maislurp-client-erlang_imap_email_projection() ::
    #{ 'read' => boolean(),
       'uid' := integer(),
       'seqNum' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'read' := Read,
          'uid' := Uid,
          'seqNum' := SeqNum,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'read' => Read,
       'uid' => Uid,
       'seqNum' => SeqNum,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
