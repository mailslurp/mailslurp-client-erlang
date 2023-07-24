-module(maislurp-client-erlang_connector_sync_request_result_exception_cause).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_request_result_exception_cause/0]).

-type maislurp-client-erlang_connector_sync_request_result_exception_cause() ::
    #{ 'stackTrace' => list(),
       'message' => binary(),
       'suppressed' => list(),
       'localizedMessage' => binary()
     }.

encode(#{ 'stackTrace' := StackTrace,
          'message' := Message,
          'suppressed' := Suppressed,
          'localizedMessage' := LocalizedMessage
        }) ->
    #{ 'stackTrace' => StackTrace,
       'message' => Message,
       'suppressed' => Suppressed,
       'localizedMessage' => LocalizedMessage
     }.
