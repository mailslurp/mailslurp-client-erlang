-module(maislurp-client-erlang_create_campaign_probe_run_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_campaign_probe_run_options/0]).

-type maislurp-client-erlang_create_campaign_probe_run_options() ::
    #{ 'fromAddress' => binary(),
       'subject' => binary(),
       'recipient' => binary(),
       'messageId' => binary(),
       'htmlBody' => binary(),
       'textBody' => binary()
     }.

encode(#{ 'fromAddress' := FromAddress,
          'subject' := Subject,
          'recipient' := Recipient,
          'messageId' := MessageId,
          'htmlBody' := HtmlBody,
          'textBody' := TextBody
        }) ->
    #{ 'fromAddress' => FromAddress,
       'subject' => Subject,
       'recipient' => Recipient,
       'messageId' => MessageId,
       'htmlBody' => HtmlBody,
       'textBody' => TextBody
     }.
