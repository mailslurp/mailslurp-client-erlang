-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'name' => binary(),
       'contentLength' => integer(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'attachmentId' := binary(),
       'contentType' => binary()
     }.

encode(#{ 'name' := Name,
          'contentLength' := ContentLength,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'attachmentId' := AttachmentId,
          'contentType' := ContentType
        }) ->
    #{ 'name' => Name,
       'contentLength' => ContentLength,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'attachmentId' => AttachmentId,
       'contentType' => ContentType
     }.
