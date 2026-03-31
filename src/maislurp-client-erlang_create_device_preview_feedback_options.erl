-module(maislurp-client-erlang_create_device_preview_feedback_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_feedback_options/0]).

-type maislurp-client-erlang_create_device_preview_feedback_options() ::
    #{ 'source' := binary(),
       'category' := binary(),
       'status' => binary(),
       'rating' => integer(),
       'runId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'screenshotId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'provider' => binary(),
       'title' => binary(),
       'comment' => binary(),
       'internalNote' => binary(),
       'sessionId' => binary(),
       'liveViewUrl' => binary(),
       'metadata' => maps:map()
     }.

encode(#{ 'source' := Source,
          'category' := Category,
          'status' := Status,
          'rating' := Rating,
          'runId' := RunId,
          'targetId' := TargetId,
          'screenshotId' := ScreenshotId,
          'provider' := Provider,
          'title' := Title,
          'comment' := Comment,
          'internalNote' := InternalNote,
          'sessionId' := SessionId,
          'liveViewUrl' := LiveViewUrl,
          'metadata' := Metadata
        }) ->
    #{ 'source' => Source,
       'category' => Category,
       'status' => Status,
       'rating' => Rating,
       'runId' => RunId,
       'targetId' => TargetId,
       'screenshotId' => ScreenshotId,
       'provider' => Provider,
       'title' => Title,
       'comment' => Comment,
       'internalNote' => InternalNote,
       'sessionId' => SessionId,
       'liveViewUrl' => LiveViewUrl,
       'metadata' => Metadata
     }.
