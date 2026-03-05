-module(maislurp-client-erlang_imap_update_flags_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_update_flags_options/0]).

-type maislurp-client-erlang_imap_update_flags_options() ::
    #{ 'operation' := binary(),
       'flags' => list(),
       'uidSet' => binary(),
       'seqSet' => binary()
     }.

encode(#{ 'operation' := Operation,
          'flags' := Flags,
          'uidSet' := UidSet,
          'seqSet' := SeqSet
        }) ->
    #{ 'operation' => Operation,
       'flags' => Flags,
       'uidSet' => UidSet,
       'seqSet' => SeqSet
     }.
