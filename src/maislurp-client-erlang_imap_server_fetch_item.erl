-module(maislurp-client-erlang_imap_server_fetch_item).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_fetch_item/0]).

-type maislurp-client-erlang_imap_server_fetch_item() ::
    #{ 'content' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'uid' := integer(),
       'seqNum' := integer(),
       'read' := boolean()
     }.

encode(#{ 'content' := Content,
          'id' := Id,
          'uid' := Uid,
          'seqNum' := SeqNum,
          'read' := Read
        }) ->
    #{ 'content' => Content,
       'id' => Id,
       'uid' => Uid,
       'seqNum' => SeqNum,
       'read' => Read
     }.
