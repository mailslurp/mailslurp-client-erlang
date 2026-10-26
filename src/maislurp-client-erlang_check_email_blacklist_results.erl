-module(maislurp-client-erlang_check_email_blacklist_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_email_blacklist_results/0]).

-type maislurp-client-erlang_check_email_blacklist_results() ::
    #{ 'domain' => binary(),
       'requestedIpAddress' => binary(),
       'requestedMxHost' => binary(),
       'status' := binary(),
       'listed' := boolean(),
       'checkedIpAddresses' := list(),
       'checkedZoneCount' := integer(),
       'totalListings' := integer(),
       'warnings' := list(),
       'errors' := list(),
       'checkStatus' := binary(),
       'checkedDomains' := list(),
       'checkedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'evidenceVersion' := binary()
     }.

encode(#{ 'domain' := Domain,
          'requestedIpAddress' := RequestedIpAddress,
          'requestedMxHost' := RequestedMxHost,
          'status' := Status,
          'listed' := Listed,
          'checkedIpAddresses' := CheckedIpAddresses,
          'checkedZoneCount' := CheckedZoneCount,
          'totalListings' := TotalListings,
          'warnings' := Warnings,
          'errors' := Errors,
          'checkStatus' := CheckStatus,
          'checkedDomains' := CheckedDomains,
          'checkedAt' := CheckedAt,
          'evidenceVersion' := EvidenceVersion
        }) ->
    #{ 'domain' => Domain,
       'requestedIpAddress' => RequestedIpAddress,
       'requestedMxHost' => RequestedMxHost,
       'status' => Status,
       'listed' => Listed,
       'checkedIpAddresses' => CheckedIpAddresses,
       'checkedZoneCount' => CheckedZoneCount,
       'totalListings' => TotalListings,
       'warnings' => Warnings,
       'errors' => Errors,
       'checkStatus' => CheckStatus,
       'checkedDomains' => CheckedDomains,
       'checkedAt' => CheckedAt,
       'evidenceVersion' => EvidenceVersion
     }.
