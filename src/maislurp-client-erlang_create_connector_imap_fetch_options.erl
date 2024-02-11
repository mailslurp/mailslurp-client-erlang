-module(maislurp-client-erlang_create_connector_imap_fetch_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_connector_imap_fetch_options/0]).

-type maislurp-client-erlang_create_connector_imap_fetch_options() ::
    #{ 'selectFolder' => binary(),
       'searchTerms' => binary()
     }.

encode(#{ 'selectFolder' := SelectFolder,
          'searchTerms' := SearchTerms
        }) ->
    #{ 'selectFolder' => SelectFolder,
       'searchTerms' => SearchTerms
     }.
