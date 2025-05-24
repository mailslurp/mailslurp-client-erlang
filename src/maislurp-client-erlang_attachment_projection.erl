-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'contentId' => binary(),
       'attachmentId' := binary(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'contentLength' => integer(),
       'contentType' => binary()
     }.

encode(#{ 'userId' := UserId,
          'inboxId' := InboxId,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'contentId' := ContentId,
          'attachmentId' := AttachmentId,
          'name' := Name,
          'id' := Id,
          'contentLength' := ContentLength,
          'contentType' := ContentType
        }) ->
    #{ 'userId' => UserId,
       'inboxId' => InboxId,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'contentId' => ContentId,
       'attachmentId' => AttachmentId,
       'name' => Name,
       'id' => Id,
       'contentLength' => ContentLength,
       'contentType' => ContentType
     }.
