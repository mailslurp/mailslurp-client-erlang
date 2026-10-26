-module(maislurp-client-erlang_imap_server_list_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_list_result/0]).

-type maislurp-client-erlang_imap_server_list_result() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
