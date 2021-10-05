-module(maislurp-client-erlang_attachment_entity).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_entity/0]).

-type maislurp-client-erlang_attachment_entity() ::
    #{ 'attachmentId' := binary(),
       'contentLength' => integer(),
       'contentType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'contentLength' := ContentLength,
          'contentType' := ContentType,
          'createdAt' := CreatedAt,
          'id' := Id,
          'name' := Name,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'contentLength' => ContentLength,
       'contentType' => ContentType,
       'createdAt' => CreatedAt,
       'id' => Id,
       'name' => Name,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
