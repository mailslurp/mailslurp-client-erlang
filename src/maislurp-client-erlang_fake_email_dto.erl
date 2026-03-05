-module(maislurp-client-erlang_fake_email_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_fake_email_dto/0]).

-type maislurp-client-erlang_fake_email_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'sender' => maislurp-client-erlang_sender:maislurp-client-erlang_sender(),
       'recipients' => maislurp-client-erlang_email_recipients:maislurp-client-erlang_email_recipients(),
       'attachmentNames' := list(),
       'subject' => binary(),
       'preview' => binary(),
       'body' := binary(),
       'seen' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'contentType' := binary(),
       'bodyUrl' := binary()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress,
          'sender' := Sender,
          'recipients' := Recipients,
          'attachmentNames' := AttachmentNames,
          'subject' := Subject,
          'preview' := Preview,
          'body' := Body,
          'seen' := Seen,
          'createdAt' := CreatedAt,
          'contentType' := ContentType,
          'bodyUrl' := BodyUrl
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress,
       'sender' => Sender,
       'recipients' => Recipients,
       'attachmentNames' => AttachmentNames,
       'subject' => Subject,
       'preview' => Preview,
       'body' => Body,
       'seen' => Seen,
       'createdAt' => CreatedAt,
       'contentType' => ContentType,
       'bodyUrl' => BodyUrl
     }.
