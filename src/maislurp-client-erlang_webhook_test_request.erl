-module(maislurp-client-erlang_webhook_test_request).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_test_request/0]).

-type maislurp-client-erlang_webhook_test_request() ::
    #{ 'headers' := maps:map(),
       'method' := binary(),
       'payload' => binary(),
       'url' := binary()
     }.

encode(#{ 'headers' := Headers,
          'method' := Method,
          'payload' := Payload,
          'url' := Url
        }) ->
    #{ 'headers' => Headers,
       'method' => Method,
       'payload' => Payload,
       'url' => Url
     }.
