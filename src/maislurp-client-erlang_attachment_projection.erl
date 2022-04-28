-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'name' => binary(),
       'contentLength' => integer(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'attachmentId' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'contentType' => binary()
     }.

encode(#{ 'name' := Name,
          'contentLength' := ContentLength,
          'userId' := UserId,
          'updatedAt' := UpdatedAt,
          'attachmentId' := AttachmentId,
          'createdAt' := CreatedAt,
          'contentType' := ContentType
        }) ->
    #{ 'name' => Name,
       'contentLength' => ContentLength,
       'userId' => UserId,
       'updatedAt' => UpdatedAt,
       'attachmentId' => AttachmentId,
       'createdAt' => CreatedAt,
       'contentType' => ContentType
     }.
