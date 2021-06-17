-module(maislurp-client-erlang_webhook_new_email_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_email_payload/0]).

-type maislurp-client-erlang_webhook_new_email_payload() ::
    #{ 'attachmentMetaDatas' => list(),
       'bcc' => list(),
       'cc' => list(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'from' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageId' => binary(),
       'subject' => binary(),
       'to' => list(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'attachmentMetaDatas' := AttachmentMetaDatas,
          'bcc' := Bcc,
          'cc' := Cc,
          'createdAt' := CreatedAt,
          'emailId' := EmailId,
          'eventName' := EventName,
          'from' := From,
          'inboxId' := InboxId,
          'messageId' := MessageId,
          'subject' := Subject,
          'to' := To,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'attachmentMetaDatas' => AttachmentMetaDatas,
       'bcc' => Bcc,
       'cc' => Cc,
       'createdAt' => CreatedAt,
       'emailId' => EmailId,
       'eventName' => EventName,
       'from' => From,
       'inboxId' => InboxId,
       'messageId' => MessageId,
       'subject' => Subject,
       'to' => To,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.