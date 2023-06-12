-module(maislurp-client-erlang_webhook_delivery_status_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_delivery_status_payload/0]).

-type maislurp-client-erlang_webhook_delivery_status_payload() ::
    #{ 'messageId' := binary(),
       'webhookId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' := binary(),
       'webhookName' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'remoteMtaIp' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'reportingMta' => binary(),
       'recipients' => list(),
       'smtpResponse' => binary(),
       'smtpStatusCode' => integer(),
       'processingTimeMillis' => integer(),
       'received' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'subject' => binary()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'eventName' := EventName,
          'webhookName' := WebhookName,
          'id' := Id,
          'userId' := UserId,
          'sentId' := SentId,
          'remoteMtaIp' := RemoteMtaIp,
          'inboxId' := InboxId,
          'reportingMta' := ReportingMta,
          'recipients' := Recipients,
          'smtpResponse' := SmtpResponse,
          'smtpStatusCode' := SmtpStatusCode,
          'processingTimeMillis' := ProcessingTimeMillis,
          'received' := Received,
          'subject' := Subject
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'eventName' => EventName,
       'webhookName' => WebhookName,
       'id' => Id,
       'userId' => UserId,
       'sentId' => SentId,
       'remoteMtaIp' => RemoteMtaIp,
       'inboxId' => InboxId,
       'reportingMta' => ReportingMta,
       'recipients' => Recipients,
       'smtpResponse' => SmtpResponse,
       'smtpStatusCode' => SmtpStatusCode,
       'processingTimeMillis' => ProcessingTimeMillis,
       'received' => Received,
       'subject' => Subject
     }.
