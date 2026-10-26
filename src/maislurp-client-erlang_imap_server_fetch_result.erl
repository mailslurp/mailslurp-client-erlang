-module(maislurp-client-erlang_imap_server_fetch_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_fetch_result/0]).

-type maislurp-client-erlang_imap_server_fetch_result() ::
    #{ 'result' => maislurp-client-erlang_imap_server_fetch_item:maislurp-client-erlang_imap_server_fetch_item()
     }.

encode(#{ 'result' := Result
        }) ->
    #{ 'result' => Result
     }.
