-module(maislurp-client-erlang_imap_server_status_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_server_status_options/0]).

-type maislurp-client-erlang_imap_server_status_options() ::
    #{ 'name' => binary(),
       'statusItems' => list()
     }.

encode(#{ 'name' := Name,
          'statusItems' := StatusItems
        }) ->
    #{ 'name' => Name,
       'statusItems' => StatusItems
     }.
