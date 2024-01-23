-module(maislurp-client-erlang_email_preview_urls).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview_urls/0]).

-type maislurp-client-erlang_email_preview_urls() ::
    #{ 'rawSmtpMessageUrl' := binary(),
       'plainHtmlBodyUrl' := binary()
     }.

encode(#{ 'rawSmtpMessageUrl' := RawSmtpMessageUrl,
          'plainHtmlBodyUrl' := PlainHtmlBodyUrl
        }) ->
    #{ 'rawSmtpMessageUrl' => RawSmtpMessageUrl,
       'plainHtmlBodyUrl' => PlainHtmlBodyUrl
     }.
