-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'contentId' => binary(),
       'attachmentId' := binary(),
       'name' => binary(),
       'contentLength' => integer(),
       'contentType' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'userId' := UserId,
          'contentId' := ContentId,
          'attachmentId' := AttachmentId,
          'name' := Name,
          'contentLength' := ContentLength,
          'contentType' := ContentType
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'userId' => UserId,
       'contentId' => ContentId,
       'attachmentId' => AttachmentId,
       'name' => Name,
       'contentLength' => ContentLength,
       'contentType' => ContentType
     }.
