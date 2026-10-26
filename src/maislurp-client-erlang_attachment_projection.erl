-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'contentType' => binary(),
       'contentLength' => integer(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'contentId' => binary(),
       'attachmentId' := binary()
     }.

encode(#{ 'contentType' := ContentType,
          'contentLength' := ContentLength,
          'name' := Name,
          'id' := Id,
          'userId' := UserId,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'contentId' := ContentId,
          'attachmentId' := AttachmentId
        }) ->
    #{ 'contentType' => ContentType,
       'contentLength' => ContentLength,
       'name' => Name,
       'id' => Id,
       'userId' => UserId,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'contentId' => ContentId,
       'attachmentId' => AttachmentId
     }.
