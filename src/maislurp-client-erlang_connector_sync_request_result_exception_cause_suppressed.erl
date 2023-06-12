-module(maislurp-client-erlang_connector_sync_request_result_exception_cause_suppressed).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_request_result_exception_cause_suppressed/0]).

-type maislurp-client-erlang_connector_sync_request_result_exception_cause_suppressed() ::
    #{ 'stackTrace' => list(),
       'message' => binary(),
       'localizedMessage' => binary()
     }.

encode(#{ 'stackTrace' := StackTrace,
          'message' := Message,
          'localizedMessage' := LocalizedMessage
        }) ->
    #{ 'stackTrace' => StackTrace,
       'message' => Message,
       'localizedMessage' => LocalizedMessage
     }.
