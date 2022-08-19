-module(maislurp-client-erlang_attachment_entity).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_entity/0]).

-type maislurp-client-erlang_attachment_entity() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachmentId' := binary(),
       'bucket' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'contentType' => binary(),
       'contentLength' => integer(),
       'name' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'attachmentId' := AttachmentId,
          'bucket' := Bucket,
          'userId' := UserId,
          'contentType' := ContentType,
          'contentLength' := ContentLength,
          'name' := Name,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'attachmentId' => AttachmentId,
       'bucket' => Bucket,
       'userId' => UserId,
       'contentType' => ContentType,
       'contentLength' => ContentLength,
       'name' => Name,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
