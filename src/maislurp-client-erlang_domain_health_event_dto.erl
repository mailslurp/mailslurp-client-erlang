-module(maislurp-client-erlang_domain_health_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_health_event_dto/0]).

-type maislurp-client-erlang_domain_health_event_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainName' => binary(),
       'accountRegion' => binary(),
       'eventType' := binary(),
       'status' := binary(),
       'severity' := binary(),
       'title' := binary(),
       'message' := binary(),
       'recommendation' => binary(),
       'eventTime' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'domainId' := DomainId,
          'domainName' := DomainName,
          'accountRegion' := AccountRegion,
          'eventType' := EventType,
          'status' := Status,
          'severity' := Severity,
          'title' := Title,
          'message' := Message,
          'recommendation' := Recommendation,
          'eventTime' := EventTime,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'domainId' => DomainId,
       'domainName' => DomainName,
       'accountRegion' => AccountRegion,
       'eventType' => EventType,
       'status' => Status,
       'severity' => Severity,
       'title' => Title,
       'message' => Message,
       'recommendation' => Recommendation,
       'eventTime' => EventTime,
       'createdAt' => CreatedAt
     }.
