-module(maislurp-client-erlang_delivery_status_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_delivery_status_dto/0]).

-type maislurp-client-erlang_delivery_status_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
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
       'subject' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
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
          'subject' := Subject,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
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
       'subject' => Subject,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
