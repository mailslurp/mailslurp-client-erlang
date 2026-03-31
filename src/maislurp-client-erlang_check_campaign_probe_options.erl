-module(maislurp-client-erlang_check_campaign_probe_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_campaign_probe_options/0]).

-type maislurp-client-erlang_check_campaign_probe_options() ::
    #{ 'fromAddress' => binary(),
       'subject' => binary(),
       'recipient' => binary(),
       'messageId' => binary(),
       'htmlBody' => binary(),
       'textBody' => binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'fromAddress' := FromAddress,
          'subject' := Subject,
          'recipient' := Recipient,
          'messageId' := MessageId,
          'htmlBody' := HtmlBody,
          'textBody' := TextBody,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'fromAddress' => FromAddress,
       'subject' => Subject,
       'recipient' => Recipient,
       'messageId' => MessageId,
       'htmlBody' => HtmlBody,
       'textBody' => TextBody,
       'captchaToken' => CaptchaToken
     }.
