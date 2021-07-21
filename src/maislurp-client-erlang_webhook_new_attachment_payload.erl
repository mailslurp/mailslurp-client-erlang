-module(maislurp-client-erlang_webhook_new_attachment_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_attachment_payload/0]).

-type maislurp-client-erlang_webhook_new_attachment_payload() ::
    #{ 'attachmentId' => binary(),
       'contentLength' => integer(),
       'contentType' => binary(),
       'eventName' => binary(),
       'messageId' => binary(),
       'name' => binary(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'attachmentId' := AttachmentId,
          'contentLength' := ContentLength,
          'contentType' := ContentType,
          'eventName' := EventName,
          'messageId' := MessageId,
          'name' := Name,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'attachmentId' => AttachmentId,
       'contentLength' => ContentLength,
       'contentType' => ContentType,
       'eventName' => EventName,
       'messageId' => MessageId,
       'name' => Name,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
