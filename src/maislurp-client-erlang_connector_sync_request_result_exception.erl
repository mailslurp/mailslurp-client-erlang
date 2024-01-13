-module(maislurp-client-erlang_connector_sync_request_result_exception).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_request_result_exception/0]).

-type maislurp-client-erlang_connector_sync_request_result_exception() ::
    #{ 'cause' => maislurp-client-erlang_connector_sync_request_result_exception_cause:maislurp-client-erlang_connector_sync_request_result_exception_cause(),
       'stackTrace' => list(),
       'message' => binary(),
       'suppressed' => list(),
       'localizedMessage' => binary()
     }.

encode(#{ 'cause' := Cause,
          'stackTrace' := StackTrace,
          'message' := Message,
          'suppressed' := Suppressed,
          'localizedMessage' := LocalizedMessage
        }) ->
    #{ 'cause' => Cause,
       'stackTrace' => StackTrace,
       'message' => Message,
       'suppressed' => Suppressed,
       'localizedMessage' => LocalizedMessage
     }.
