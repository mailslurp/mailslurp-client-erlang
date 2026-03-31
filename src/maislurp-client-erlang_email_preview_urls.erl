-module(maislurp-client-erlang_email_preview_urls).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_preview_urls/0]).

-type maislurp-client-erlang_email_preview_urls() ::
    #{ 'rawSmtpMessageUrl' := binary(),
       'plainHtmlBodyUrl' := binary(),
       'origin' := binary()
     }.

encode(#{ 'rawSmtpMessageUrl' := RawSmtpMessageUrl,
          'plainHtmlBodyUrl' := PlainHtmlBodyUrl,
          'origin' := Origin
        }) ->
    #{ 'rawSmtpMessageUrl' => RawSmtpMessageUrl,
       'plainHtmlBodyUrl' => PlainHtmlBodyUrl,
       'origin' => Origin
     }.
