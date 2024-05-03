-module(maislurp-client-erlang_imap_server_search_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_search_options/0]).

-type maislurp-client-erlang_imap_server_search_options() ::
    #{ 'seqNum' => binary(),
       'uid' => binary(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentSince' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sentBefore' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'header' => maps:map(),
       'body' => list(),
       'text' => list(),
       'withFlags' => list(),
       'withoutFlags' => list()
     }.

encode(#{ 'seqNum' := SeqNum,
          'uid' := Uid,
          'since' := Since,
          'before' := Before,
          'sentSince' := SentSince,
          'sentBefore' := SentBefore,
          'header' := Header,
          'body' := Body,
          'text' := Text,
          'withFlags' := WithFlags,
          'withoutFlags' := WithoutFlags
        }) ->
    #{ 'seqNum' => SeqNum,
       'uid' => Uid,
       'since' => Since,
       'before' => Before,
       'sentSince' => SentSince,
       'sentBefore' => SentBefore,
       'header' => Header,
       'body' => Body,
       'text' => Text,
       'withFlags' => WithFlags,
       'withoutFlags' => WithoutFlags
     }.
