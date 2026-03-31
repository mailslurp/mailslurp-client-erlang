-module(maislurp-client-erlang_dmarc_report_metadata).

-export([encode/1]).

-export_type([maislurp-client-erlang_dmarc_report_metadata/0]).

-type maislurp-client-erlang_dmarc_report_metadata() ::
    #{ 'orgName' => binary(),
       'email' => binary(),
       'reportId' => binary(),
       'domain' => binary(),
       'adkim' => binary(),
       'aspf' => binary(),
       'policy' => binary(),
       'subdomainPolicy' => binary(),
       'percentage' => integer(),
       'dateRangeBegin' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'dateRangeEnd' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'orgName' := OrgName,
          'email' := Email,
          'reportId' := ReportId,
          'domain' := Domain,
          'adkim' := Adkim,
          'aspf' := Aspf,
          'policy' := Policy,
          'subdomainPolicy' := SubdomainPolicy,
          'percentage' := Percentage,
          'dateRangeBegin' := DateRangeBegin,
          'dateRangeEnd' := DateRangeEnd
        }) ->
    #{ 'orgName' => OrgName,
       'email' => Email,
       'reportId' => ReportId,
       'domain' => Domain,
       'adkim' => Adkim,
       'aspf' => Aspf,
       'policy' => Policy,
       'subdomainPolicy' => SubdomainPolicy,
       'percentage' => Percentage,
       'dateRangeBegin' => DateRangeBegin,
       'dateRangeEnd' => DateRangeEnd
     }.
