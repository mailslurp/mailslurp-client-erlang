-module(maislurp-client-erlang_analyze_email_headers_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_analyze_email_headers_results/0]).

-type maislurp-client-erlang_analyze_email_headers_results() ::
    #{ 'summary' := maislurp-client-erlang_email_header_analysis_summary:maislurp-client-erlang_email_header_analysis_summary(),
       'receivedPath' := list(),
       'parsedHeaders' := maps:map(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'summary' := Summary,
          'receivedPath' := ReceivedPath,
          'parsedHeaders' := ParsedHeaders,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'summary' => Summary,
       'receivedPath' => ReceivedPath,
       'parsedHeaders' => ParsedHeaders,
       'warnings' => Warnings,
       'errors' => Errors
     }.
