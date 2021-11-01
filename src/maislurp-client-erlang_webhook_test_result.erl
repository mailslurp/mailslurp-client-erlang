-module(maislurp-client-erlang_webhook_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_test_result/0]).

-type maislurp-client-erlang_webhook_test_result() ::
    #{ 'message' => binary(),
       'request' := maislurp-client-erlang_webhook_test_request:maislurp-client-erlang_webhook_test_request(),
       'response' := maislurp-client-erlang_webhook_test_response:maislurp-client-erlang_webhook_test_response()
     }.

encode(#{ 'message' := Message,
          'request' := Request,
          'response' := Response
        }) ->
    #{ 'message' => Message,
       'request' => Request,
       'response' => Response
     }.
