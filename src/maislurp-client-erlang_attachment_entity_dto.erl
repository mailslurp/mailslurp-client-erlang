-module(maislurp-client-erlang_attachment_entity_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_entity_dto/0]).

-type maislurp-client-erlang_attachment_entity_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachmentId' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'contentType' => binary(),
       'contentLength' => integer(),
       'contentId' => binary(),
       'name' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'attachmentId' := AttachmentId,
          'userId' := UserId,
          'contentType' := ContentType,
          'contentLength' := ContentLength,
          'contentId' := ContentId,
          'name' := Name,
          'inboxId' := InboxId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'attachmentId' => AttachmentId,
       'userId' => UserId,
       'contentType' => ContentType,
       'contentLength' => ContentLength,
       'contentId' => ContentId,
       'name' => Name,
       'inboxId' => InboxId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
