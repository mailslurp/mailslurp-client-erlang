-module(maislurp-client-erlang_device_preview_feedback_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_feedback_dto/0]).

-type maislurp-client-erlang_device_preview_feedback_dto() ::
    #{ 'feedbackId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'source' := binary(),
       'category' := binary(),
       'status' := binary(),
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
       'metadata' => maps:map(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'feedbackId' := FeedbackId,
          'userId' := UserId,
          'source' := Source,
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
          'metadata' := Metadata,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'feedbackId' => FeedbackId,
       'userId' => UserId,
       'source' => Source,
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
       'metadata' => Metadata,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
