-module(maislurp-client-erlang_webhook_new_email_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_email_payload/0]).

-type maislurp-client-erlang_webhook_new_email_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'to' := list(),
       'from' := binary(),
       'cc' := list(),
       'bcc' := list(),
       'subject' => binary(),
       'attachmentMetaDatas' := list()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'emailId' := EmailId,
          'createdAt' := CreatedAt,
          'to' := To,
          'from' := From,
          'cc' := Cc,
          'bcc' := Bcc,
          'subject' := Subject,
          'attachmentMetaDatas' := AttachmentMetaDatas
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'emailId' => EmailId,
       'createdAt' => CreatedAt,
       'to' => To,
       'from' => From,
       'cc' => Cc,
       'bcc' => Bcc,
       'subject' => Subject,
       'attachmentMetaDatas' => AttachmentMetaDatas
     }.
