-module(maislurp-client-erlang_audit_log_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_audit_log_event_dto/0]).

-type maislurp-client-erlang_audit_log_event_dto() ::
    #{ 'tenantId' := binary(),
       'dt' => binary(),
       'eventId' := binary(),
       'eventTs' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'action' := binary(),
       'userId' => binary(),
       'actorUserId' => binary(),
       'targetUserId' => binary(),
       'resourceType' => binary(),
       'resourceId' => binary(),
       'outcome' => binary(),
       'requestId' => binary(),
       'ipAddress' => binary(),
       'metadataJson' => binary()
     }.

encode(#{ 'tenantId' := TenantId,
          'dt' := Dt,
          'eventId' := EventId,
          'eventTs' := EventTs,
          'action' := Action,
          'userId' := UserId,
          'actorUserId' := ActorUserId,
          'targetUserId' := TargetUserId,
          'resourceType' := ResourceType,
          'resourceId' := ResourceId,
          'outcome' := Outcome,
          'requestId' := RequestId,
          'ipAddress' := IpAddress,
          'metadataJson' := MetadataJson
        }) ->
    #{ 'tenantId' => TenantId,
       'dt' => Dt,
       'eventId' => EventId,
       'eventTs' => EventTs,
       'action' => Action,
       'userId' => UserId,
       'actorUserId' => ActorUserId,
       'targetUserId' => TargetUserId,
       'resourceType' => ResourceType,
       'resourceId' => ResourceId,
       'outcome' => Outcome,
       'requestId' => RequestId,
       'ipAddress' => IpAddress,
       'metadataJson' => MetadataJson
     }.
