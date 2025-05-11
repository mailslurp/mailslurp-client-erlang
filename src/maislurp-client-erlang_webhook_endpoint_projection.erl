-module(maislurp-client-erlang_webhook_endpoint_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_endpoint_projection/0]).

-type maislurp-client-erlang_webhook_endpoint_projection() ::
    #{ 'url' := binary(),
       'health' := binary()
     }.

encode(#{ 'url' := Url,
          'health' := Health
        }) ->
    #{ 'url' => Url,
       'health' => Health
     }.
