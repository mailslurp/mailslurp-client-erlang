-module(maislurp-client-erlang_attachment_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_attachment_projection/0]).

-type maislurp-client-erlang_attachment_projection() ::
    #{ 'attachmentId' => binary(),
       'contentLength' => integer(),
       'contentType' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'name' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'contentLength' := ContentLength,
          'contentType' := ContentType,
          'createdAt' := CreatedAt,
          'name' := Name,
          'updatedAt' := UpdatedAt,
          'userId' := UserId
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'contentLength' => ContentLength,
       'contentType' => ContentType,
       'createdAt' => CreatedAt,
       'name' => Name,
       'updatedAt' => UpdatedAt,
       'userId' => UserId
     }.
