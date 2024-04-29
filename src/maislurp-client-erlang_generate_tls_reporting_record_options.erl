-module(maislurp-client-erlang_generate_tls_reporting_record_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_generate_tls_reporting_record_options/0]).

-type maislurp-client-erlang_generate_tls_reporting_record_options() ::
    #{ 'reportingAddresses' := list(),
       'reportingUrl' => binary(),
       'host' := binary(),
       'version' := binary(),
       'ttl' := integer()
     }.

encode(#{ 'reportingAddresses' := ReportingAddresses,
          'reportingUrl' := ReportingUrl,
          'host' := Host,
          'version' := Version,
          'ttl' := Ttl
        }) ->
    #{ 'reportingAddresses' => ReportingAddresses,
       'reportingUrl' => ReportingUrl,
       'host' => Host,
       'version' => Version,
       'ttl' => Ttl
     }.
