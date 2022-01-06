-module(maislurp-client-erlang_webhook_email_read_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_email_read_payload/0]).

-type maislurp-client-erlang_webhook_email_read_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'emailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailIsRead' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'emailId' := EmailId,
          'inboxId' := InboxId,
          'emailIsRead' := EmailIsRead,
          'createdAt' := CreatedAt
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'emailId' => EmailId,
       'inboxId' => InboxId,
       'emailIsRead' => EmailIsRead,
       'createdAt' => CreatedAt
     }.
