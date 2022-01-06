-module(maislurp-client-erlang_webhook_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_test_result/0]).

-type maislurp-client-erlang_webhook_test_result() ::
    #{ 'message' => binary(),
       'response' => maislurp-client-erlang_webhook_test_response:maislurp-client-erlang_webhook_test_response(),
       'request' => maislurp-client-erlang_webhook_test_request:maislurp-client-erlang_webhook_test_request()
     }.

encode(#{ 'message' := Message,
          'response' := Response,
          'request' := Request
        }) ->
    #{ 'message' => Message,
       'response' => Response,
       'request' => Request
     }.
