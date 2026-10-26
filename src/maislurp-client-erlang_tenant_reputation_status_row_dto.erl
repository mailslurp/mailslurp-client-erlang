-module(maislurp-client-erlang_tenant_reputation_status_row_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_tenant_reputation_status_row_dto/0]).

-type maislurp-client-erlang_tenant_reputation_status_row_dto() ::
    #{ 'accountRegion' := binary(),
       'tenantName' := binary(),
       'tenantArn' => binary(),
       'sendingStatus' => binary(),
       'reputationStatus' => binary(),
       'reputationPolicy' => binary(),
       'customerManagedSendingStatus' => binary(),
       'awsManagedSendingStatus' => binary(),
       'findingCount' := integer(),
       'bounceRate' => float(),
       'complaintRate' => float(),
       'sendLastHour' => float(),
       'metricTimestamp' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'error' => binary()
     }.

encode(#{ 'accountRegion' := AccountRegion,
          'tenantName' := TenantName,
          'tenantArn' := TenantArn,
          'sendingStatus' := SendingStatus,
          'reputationStatus' := ReputationStatus,
          'reputationPolicy' := ReputationPolicy,
          'customerManagedSendingStatus' := CustomerManagedSendingStatus,
          'awsManagedSendingStatus' := AwsManagedSendingStatus,
          'findingCount' := FindingCount,
          'bounceRate' := BounceRate,
          'complaintRate' := ComplaintRate,
          'sendLastHour' := SendLastHour,
          'metricTimestamp' := MetricTimestamp,
          'error' := Error
        }) ->
    #{ 'accountRegion' => AccountRegion,
       'tenantName' => TenantName,
       'tenantArn' => TenantArn,
       'sendingStatus' => SendingStatus,
       'reputationStatus' => ReputationStatus,
       'reputationPolicy' => ReputationPolicy,
       'customerManagedSendingStatus' => CustomerManagedSendingStatus,
       'awsManagedSendingStatus' => AwsManagedSendingStatus,
       'findingCount' => FindingCount,
       'bounceRate' => BounceRate,
       'complaintRate' => ComplaintRate,
       'sendLastHour' => SendLastHour,
       'metricTimestamp' => MetricTimestamp,
       'error' => Error
     }.
