-module(maislurp-client-erlang_webhook_test_request).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_test_request/0]).

-type maislurp-client-erlang_webhook_test_request() ::
    #{ 'url' := binary(),
       'method' := binary(),
       'headers' := maps:map(),
       'payload' => binary()
     }.

encode(#{ 'url' := Url,
          'method' := Method,
          'headers' := Headers,
          'payload' := Payload
        }) ->
    #{ 'url' => Url,
       'method' => Method,
       'headers' => Headers,
       'payload' => Payload
     }.
