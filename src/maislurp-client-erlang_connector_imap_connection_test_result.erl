-module(maislurp-client-erlang_connector_imap_connection_test_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_imap_connection_test_result/0]).

-type maislurp-client-erlang_connector_imap_connection_test_result() ::
    #{ 'error' => binary(),
       'success' := boolean(),
       'message' => binary(),
       'logs' => list()
     }.

encode(#{ 'error' := Error,
          'success' := Success,
          'message' := Message,
          'logs' := Logs
        }) ->
    #{ 'error' => Error,
       'success' => Success,
       'message' => Message,
       'logs' => Logs
     }.
