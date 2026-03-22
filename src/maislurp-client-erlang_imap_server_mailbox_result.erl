-module(maislurp-client-erlang_imap_server_mailbox_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_mailbox_result/0]).

-type maislurp-client-erlang_imap_server_mailbox_result() ::
    #{ 'message' => binary(),
       'success' := boolean()
     }.

encode(#{ 'message' := Message,
          'success' := Success
        }) ->
    #{ 'message' => Message,
       'success' => Success
     }.
