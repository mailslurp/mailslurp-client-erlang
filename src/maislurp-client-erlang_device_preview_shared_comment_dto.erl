-module(maislurp-client-erlang_device_preview_shared_comment_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_shared_comment_dto/0]).

-type maislurp-client-erlang_device_preview_shared_comment_dto() ::
    #{ 'commentId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'screenshotId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'authorLabel' => binary(),
       'targetLabel' => binary(),
       'comment' := binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'commentId' := CommentId,
          'targetId' := TargetId,
          'screenshotId' := ScreenshotId,
          'status' := Status,
          'authorLabel' := AuthorLabel,
          'targetLabel' := TargetLabel,
          'comment' := Comment,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'commentId' => CommentId,
       'targetId' => TargetId,
       'screenshotId' => ScreenshotId,
       'status' => Status,
       'authorLabel' => AuthorLabel,
       'targetLabel' => TargetLabel,
       'comment' => Comment,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
