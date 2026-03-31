-module(maislurp-client-erlang_tenant_reputation_finding_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tenant_reputation_finding_dto/0]).

-type maislurp-client-erlang_tenant_reputation_finding_dto() ::
    #{ 'accountRegion' := binary(),
       'tenantName' := binary(),
       'tenantArn' => binary(),
       'type' => binary(),
       'impact' => binary(),
       'status' => binary(),
       'description' => binary(),
       'createdTimestamp' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'lastUpdatedTimestamp' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'accountRegion' := AccountRegion,
          'tenantName' := TenantName,
          'tenantArn' := TenantArn,
          'type' := Type,
          'impact' := Impact,
          'status' := Status,
          'description' := Description,
          'createdTimestamp' := CreatedTimestamp,
          'lastUpdatedTimestamp' := LastUpdatedTimestamp
        }) ->
    #{ 'accountRegion' => AccountRegion,
       'tenantName' => TenantName,
       'tenantArn' => TenantArn,
       'type' => Type,
       'impact' => Impact,
       'status' => Status,
       'description' => Description,
       'createdTimestamp' => CreatedTimestamp,
       'lastUpdatedTimestamp' => LastUpdatedTimestamp
     }.
