-module(maislurp-client-erlang_create_email_audit_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_email_audit_options/0]).

-type maislurp-client-erlang_create_email_audit_options() ::
    #{ 'fromAddress' => binary(),
       'recipient' => binary(),
       'subject' => binary(),
       'htmlBody' => binary(),
       'textBody' => binary(),
       'emailAnalysis' => maislurp-client-erlang_email_analysis:maislurp-client-erlang_email_analysis(),
       'hasAttachments' => boolean()
     }.

encode(#{ 'fromAddress' := FromAddress,
          'recipient' := Recipient,
          'subject' := Subject,
          'htmlBody' := HtmlBody,
          'textBody' := TextBody,
          'emailAnalysis' := EmailAnalysis,
          'hasAttachments' := HasAttachments
        }) ->
    #{ 'fromAddress' => FromAddress,
       'recipient' => Recipient,
       'subject' => Subject,
       'htmlBody' => HtmlBody,
       'textBody' => TextBody,
       'emailAnalysis' => EmailAnalysis,
       'hasAttachments' => HasAttachments
     }.
