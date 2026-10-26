-module(maislurp-client-erlang_email_domain_reputation_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_domain_reputation_result/0]).

-type maislurp-client-erlang_email_domain_reputation_result() ::
    #{ 'input' := binary(),
       'normalizedTarget' := binary(),
       'emailAddress' => binary(),
       'domain' => binary(),
       'ipAddress' => binary(),
       'mxHost' => binary(),
       'status' := binary(),
       'listed' := boolean(),
       'blacklist' => maislurp-client-erlang_check_email_blacklist_results:maislurp-client-erlang_check_email_blacklist_results(),
       'insights' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'input' := Input,
          'normalizedTarget' := NormalizedTarget,
          'emailAddress' := EmailAddress,
          'domain' := Domain,
          'ipAddress' := IpAddress,
          'mxHost' := MxHost,
          'status' := Status,
          'listed' := Listed,
          'blacklist' := Blacklist,
          'insights' := Insights,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'input' => Input,
       'normalizedTarget' => NormalizedTarget,
       'emailAddress' => EmailAddress,
       'domain' => Domain,
       'ipAddress' => IpAddress,
       'mxHost' => MxHost,
       'status' => Status,
       'listed' => Listed,
       'blacklist' => Blacklist,
       'insights' => Insights,
       'warnings' => Warnings,
       'errors' => Errors
     }.
