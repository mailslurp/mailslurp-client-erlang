-module(maislurp-client-erlang_webhook_test_response).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_test_response/0]).

-type maislurp-client-erlang_webhook_test_response() ::
    #{ 'message' => binary(),
       'statusCode' => integer()
     }.

encode(#{ 'message' := Message,
          'statusCode' := StatusCode
        }) ->
    #{ 'message' => Message,
       'statusCode' => StatusCode
     }.
