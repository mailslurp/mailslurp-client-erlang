-module(maislurp-client-erlang_audit_log_search_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_audit_log_search_options/0]).

-type maislurp-client-erlang_audit_log_search_options() ::
    #{ 'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'action' => binary(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'actorUserId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'targetUserId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'resourceType' => binary(),
       'resourceId' => binary(),
       'outcome' => binary(),
       'requestId' => binary(),
       'ipAddress' => binary(),
       'eventId' => binary(),
       'pageSize' => integer(),
       'cursor' => binary()
     }.

encode(#{ 'since' := Since,
          'before' := Before,
          'action' := Action,
          'userId' := UserId,
          'actorUserId' := ActorUserId,
          'targetUserId' := TargetUserId,
          'resourceType' := ResourceType,
          'resourceId' := ResourceId,
          'outcome' := Outcome,
          'requestId' := RequestId,
          'ipAddress' := IpAddress,
          'eventId' := EventId,
          'pageSize' := PageSize,
          'cursor' := Cursor
        }) ->
    #{ 'since' => Since,
       'before' => Before,
       'action' => Action,
       'userId' => UserId,
       'actorUserId' => ActorUserId,
       'targetUserId' => TargetUserId,
       'resourceType' => ResourceType,
       'resourceId' => ResourceId,
       'outcome' => Outcome,
       'requestId' => RequestId,
       'ipAddress' => IpAddress,
       'eventId' => EventId,
       'pageSize' => PageSize,
       'cursor' => Cursor
     }.
