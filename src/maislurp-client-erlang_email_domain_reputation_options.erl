-module(maislurp-client-erlang_email_domain_reputation_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_domain_reputation_options/0]).

-type maislurp-client-erlang_email_domain_reputation_options() ::
    #{ 'target' := binary(),
       'ipAddress' => binary(),
       'mxHost' => binary(),
       'includeBlacklist' => boolean()
     }.

encode(#{ 'target' := Target,
          'ipAddress' := IpAddress,
          'mxHost' := MxHost,
          'includeBlacklist' := IncludeBlacklist
        }) ->
    #{ 'target' => Target,
       'ipAddress' => IpAddress,
       'mxHost' => MxHost,
       'includeBlacklist' => IncludeBlacklist
     }.
