-module(maislurp-client-erlang_imap_server_status_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_status_result/0]).

-type maislurp-client-erlang_imap_server_status_result() ::
    #{ 'result' => maislurp-client-erlang_imap_mailbox_status:maislurp-client-erlang_imap_mailbox_status()
     }.

encode(#{ 'result' := Result
        }) ->
    #{ 'result' => Result
     }.
