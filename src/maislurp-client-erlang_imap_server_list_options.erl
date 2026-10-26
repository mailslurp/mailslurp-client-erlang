-module(maislurp-client-erlang_imap_server_list_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_list_options/0]).

-type maislurp-client-erlang_imap_server_list_options() ::
    #{ 'uidSet' => binary(),
       'seqSet' => binary()
     }.

encode(#{ 'uidSet' := UidSet,
          'seqSet' := SeqSet
        }) ->
    #{ 'uidSet' => UidSet,
       'seqSet' => SeqSet
     }.
