-module(maislurp-client-erlang_domain_monitor_email_verification_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_email_verification_dto/0]).

-type maislurp-client-erlang_domain_monitor_email_verification_dto() ::
    #{ 'monitorId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary(),
       'localPart' := binary(),
       'status' := binary(),
       'sampleCount' := integer(),
       'lastSample' => maislurp-client-erlang_domain_monitor_observed_auth_sample_dto:maislurp-client-erlang_domain_monitor_observed_auth_sample_dto(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'monitorId' := MonitorId,
          'emailAddress' := EmailAddress,
          'localPart' := LocalPart,
          'status' := Status,
          'sampleCount' := SampleCount,
          'lastSample' := LastSample,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'monitorId' => MonitorId,
       'emailAddress' => EmailAddress,
       'localPart' => LocalPart,
       'status' => Status,
       'sampleCount' => SampleCount,
       'lastSample' => LastSample,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
