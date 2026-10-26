-module(maislurp-client-erlang_agent_api_error_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_api_error_dto/0]).

-type maislurp-client-erlang_agent_api_error_dto() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'retryable' := boolean(),
       'suggestedAction' => binary(),
       'requestId' := binary(),
       'details' := maps:map()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'retryable' := Retryable,
          'suggestedAction' := SuggestedAction,
          'requestId' := RequestId,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'retryable' => Retryable,
       'suggestedAction' => SuggestedAction,
       'requestId' => RequestId,
       'details' => Details
     }.
