-module(maislurp-client-erlang_generate_dmarc_record_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_dmarc_record_options/0]).

-type maislurp-client-erlang_generate_dmarc_record_options() ::
    #{ 'domain' := binary(),
       'version' := binary(),
       'policy' := binary(),
       'subdomainPolicy' => binary(),
       'reportEmailAddress' => list(),
       'forensicEmailAddress' => list(),
       'percentage' => integer(),
       'reportFormat' => binary(),
       'secondsBetweenReports' => integer(),
       'adkim' => binary(),
       'aspf' => binary(),
       'fo' => binary()
     }.

encode(#{ 'domain' := Domain,
          'version' := Version,
          'policy' := Policy,
          'subdomainPolicy' := SubdomainPolicy,
          'reportEmailAddress' := ReportEmailAddress,
          'forensicEmailAddress' := ForensicEmailAddress,
          'percentage' := Percentage,
          'reportFormat' := ReportFormat,
          'secondsBetweenReports' := SecondsBetweenReports,
          'adkim' := Adkim,
          'aspf' := Aspf,
          'fo' := Fo
        }) ->
    #{ 'domain' => Domain,
       'version' => Version,
       'policy' => Policy,
       'subdomainPolicy' => SubdomainPolicy,
       'reportEmailAddress' => ReportEmailAddress,
       'forensicEmailAddress' => ForensicEmailAddress,
       'percentage' => Percentage,
       'reportFormat' => ReportFormat,
       'secondsBetweenReports' => SecondsBetweenReports,
       'adkim' => Adkim,
       'aspf' => Aspf,
       'fo' => Fo
     }.
