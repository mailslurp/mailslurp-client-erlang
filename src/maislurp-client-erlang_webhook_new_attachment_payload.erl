-module(maislurp-client-erlang_webhook_new_attachment_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_attachment_payload/0]).

-type maislurp-client-erlang_webhook_new_attachment_payload() ::
    #{ 'messageId' => binary(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary(),
       'eventName' => binary(),
       'attachmentId' => binary(),
       'name' => binary(),
       'contentType' => binary(),
       'contentLength' => integer()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName,
          'eventName' := EventName,
          'attachmentId' := AttachmentId,
          'name' := Name,
          'contentType' := ContentType,
          'contentLength' := ContentLength
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName,
       'eventName' => EventName,
       'attachmentId' => AttachmentId,
       'name' => Name,
       'contentType' => ContentType,
       'contentLength' => ContentLength
     }.
