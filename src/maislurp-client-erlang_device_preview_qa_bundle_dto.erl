-module(maislurp-client-erlang_device_preview_qa_bundle_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_device_preview_qa_bundle_dto/0]).

-type maislurp-client-erlang_device_preview_qa_bundle_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'runId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'requestedEmailAudit' := boolean(),
       'requestedDomainMonitor' := boolean(),
       'status' := binary(),
       'emailAuditStatus' := binary(),
       'domainMonitorStatus' := binary(),
       'emailAuditId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainMonitorId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainMonitorRunId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'senderDomain' => binary(),
       'emailAuditMessage' => binary(),
       'domainMonitorMessage' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'runId' := RunId,
          'userId' := UserId,
          'requestedEmailAudit' := RequestedEmailAudit,
          'requestedDomainMonitor' := RequestedDomainMonitor,
          'status' := Status,
          'emailAuditStatus' := EmailAuditStatus,
          'domainMonitorStatus' := DomainMonitorStatus,
          'emailAuditId' := EmailAuditId,
          'domainMonitorId' := DomainMonitorId,
          'domainMonitorRunId' := DomainMonitorRunId,
          'senderDomain' := SenderDomain,
          'emailAuditMessage' := EmailAuditMessage,
          'domainMonitorMessage' := DomainMonitorMessage,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'runId' => RunId,
       'userId' => UserId,
       'requestedEmailAudit' => RequestedEmailAudit,
       'requestedDomainMonitor' => RequestedDomainMonitor,
       'status' => Status,
       'emailAuditStatus' => EmailAuditStatus,
       'domainMonitorStatus' => DomainMonitorStatus,
       'emailAuditId' => EmailAuditId,
       'domainMonitorId' => DomainMonitorId,
       'domainMonitorRunId' => DomainMonitorRunId,
       'senderDomain' => SenderDomain,
       'emailAuditMessage' => EmailAuditMessage,
       'domainMonitorMessage' => DomainMonitorMessage,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
