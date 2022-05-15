-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'name' => binary(),
       'contentLength' => integer(),
       'contentType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'attachmentId' := binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'contentLength' := ContentLength,
          'contentType' := ContentType,
          'createdAt' := CreatedAt,
          'userId' := UserId,
          'attachmentId' := AttachmentId,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'name' => Name,
       'contentLength' => ContentLength,
       'contentType' => ContentType,
       'createdAt' => CreatedAt,
       'userId' => UserId,
       'attachmentId' => AttachmentId,
       'updatedAt' => UpdatedAt
     }.
