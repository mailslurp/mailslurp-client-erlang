-module(maislurp-client-erlang_imap_email_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_email_projection/0]).

-type maislurp-client-erlang_imap_email_projection() ::
    #{ 'uid' := integer(),
       'seqNum' := integer(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'uid' := Uid,
          'seqNum' := SeqNum,
          'id' := Id
        }) ->
    #{ 'uid' => Uid,
       'seqNum' => SeqNum,
       'id' => Id
     }.
