-module(maislurp-client-erlang_export_link).

-export([encode/1]).

-export_type([maislurp-client-erlang_export_link/0]).

-type maislurp-client-erlang_export_link() ::
    #{ 'downloadLink' := binary()
     }.

encode(#{ 'downloadLink' := DownloadLink
        }) ->
    #{ 'downloadLink' => DownloadLink
     }.
