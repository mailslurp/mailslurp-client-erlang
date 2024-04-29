-module(maislurp-client-erlang_imap_server_search_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_search_result/0]).

-type maislurp-client-erlang_imap_server_search_result() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
