-module(maislurp-client-erlang_imap_mailbox_status).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_mailbox_status/0]).

-type maislurp-client-erlang_imap_mailbox_status() ::
    #{ 'name' := binary(),
       'readOnly' := boolean(),
       'items' := maps:map(),
       'flags' := list(),
       'permanentFlags' := list(),
       'unseenSeqNum' := integer(),
       'messages' := integer(),
       'recent' := integer(),
       'unseen' := integer(),
       'uidNext' := integer(),
       'uidValidity' := integer(),
       'appendLimit' => integer()
     }.

encode(#{ 'name' := Name,
          'readOnly' := ReadOnly,
          'items' := Items,
          'flags' := Flags,
          'permanentFlags' := PermanentFlags,
          'unseenSeqNum' := UnseenSeqNum,
          'messages' := Messages,
          'recent' := Recent,
          'unseen' := Unseen,
          'uidNext' := UidNext,
          'uidValidity' := UidValidity,
          'appendLimit' := AppendLimit
        }) ->
    #{ 'name' => Name,
       'readOnly' => ReadOnly,
       'items' => Items,
       'flags' => Flags,
       'permanentFlags' => PermanentFlags,
       'unseenSeqNum' => UnseenSeqNum,
       'messages' => Messages,
       'recent' => Recent,
       'unseen' => Unseen,
       'uidNext' => UidNext,
       'uidValidity' => UidValidity,
       'appendLimit' => AppendLimit
     }.
