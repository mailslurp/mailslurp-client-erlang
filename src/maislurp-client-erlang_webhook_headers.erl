-module(maislurp-client-erlang_webhook_headers).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_headers/0]).

-type maislurp-client-erlang_webhook_headers() ::
    #{ 'headers' := list()
     }.

encode(#{ 'headers' := Headers
        }) ->
    #{ 'headers' => Headers
     }.
