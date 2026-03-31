-module(maislurp-client-erlang_update_device_preview_feedback_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_device_preview_feedback_options/0]).

-type maislurp-client-erlang_update_device_preview_feedback_options() ::
    #{ 'status' => binary(),
       'rating' => integer(),
       'title' => binary(),
       'comment' => binary(),
       'internalNote' => binary(),
       'appendInternalNote' => boolean(),
       'sessionId' => binary(),
       'liveViewUrl' => binary(),
       'metadata' => maps:map()
     }.

encode(#{ 'status' := Status,
          'rating' := Rating,
          'title' := Title,
          'comment' := Comment,
          'internalNote' := InternalNote,
          'appendInternalNote' := AppendInternalNote,
          'sessionId' := SessionId,
          'liveViewUrl' := LiveViewUrl,
          'metadata' := Metadata
        }) ->
    #{ 'status' => Status,
       'rating' => Rating,
       'title' => Title,
       'comment' => Comment,
       'internalNote' => InternalNote,
       'appendInternalNote' => AppendInternalNote,
       'sessionId' => SessionId,
       'liveViewUrl' => LiveViewUrl,
       'metadata' => Metadata
     }.
