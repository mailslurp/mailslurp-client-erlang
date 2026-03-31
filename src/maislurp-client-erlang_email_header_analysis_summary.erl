-module(maislurp-client-erlang_email_header_analysis_summary).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_header_analysis_summary/0]).

-type maislurp-client-erlang_email_header_analysis_summary() ::
    #{ 'spf' => binary(),
       'dkim' => binary(),
       'dmarc' => binary(),
       'fromDomain' => binary(),
       'returnPathDomain' => binary()
     }.

encode(#{ 'spf' := Spf,
          'dkim' := Dkim,
          'dmarc' := Dmarc,
          'fromDomain' := FromDomain,
          'returnPathDomain' := ReturnPathDomain
        }) ->
    #{ 'spf' => Spf,
       'dkim' => Dkim,
       'dmarc' => Dmarc,
       'fromDomain' => FromDomain,
       'returnPathDomain' => ReturnPathDomain
     }.
