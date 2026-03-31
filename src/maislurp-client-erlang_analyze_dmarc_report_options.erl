-module(maislurp-client-erlang_analyze_dmarc_report_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_analyze_dmarc_report_options/0]).

-type maislurp-client-erlang_analyze_dmarc_report_options() ::
    #{ 'reportXml' := binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'reportXml' := ReportXml,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'reportXml' => ReportXml,
       'captchaToken' => CaptchaToken
     }.
