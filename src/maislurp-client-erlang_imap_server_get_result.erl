-module(maislurp-client-erlang_imap_server_get_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_get_result/0]).

-type maislurp-client-erlang_imap_server_get_result() ::
    #{ 'result' => maislurp-client-erlang_imap_email_projection:maislurp-client-erlang_imap_email_projection()
     }.

encode(#{ 'result' := Result
        }) ->
    #{ 'result' => Result
     }.
