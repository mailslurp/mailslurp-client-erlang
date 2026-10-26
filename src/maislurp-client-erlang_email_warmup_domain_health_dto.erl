-module(maislurp-client-erlang_email_warmup_domain_health_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_domain_health_dto/0]).

-type maislurp-client-erlang_email_warmup_domain_health_dto() ::
    #{ 'domain' := binary(),
       'monitorId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' => binary(),
       'healthScore' => integer(),
       'spfOk' => boolean(),
       'dkimOk' => boolean(),
       'dmarcOk' => boolean(),
       'mxOk' => boolean(),
       'blacklistOk' => boolean(),
       'checkedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'domain' := Domain,
          'monitorId' := MonitorId,
          'status' := Status,
          'healthScore' := HealthScore,
          'spfOk' := SpfOk,
          'dkimOk' := DkimOk,
          'dmarcOk' := DmarcOk,
          'mxOk' := MxOk,
          'blacklistOk' := BlacklistOk,
          'checkedAt' := CheckedAt
        }) ->
    #{ 'domain' => Domain,
       'monitorId' => MonitorId,
       'status' => Status,
       'healthScore' => HealthScore,
       'spfOk' => SpfOk,
       'dkimOk' => DkimOk,
       'dmarcOk' => DmarcOk,
       'mxOk' => MxOk,
       'blacklistOk' => BlacklistOk,
       'checkedAt' => CheckedAt
     }.
