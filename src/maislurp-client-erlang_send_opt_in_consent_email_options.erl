-module(maislurp-client-erlang_send_opt_in_consent_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_opt_in_consent_email_options/0]).

-type maislurp-client-erlang_send_opt_in_consent_email_options() ::
    #{ 'templateHtml' := binary(),
       'subject' := binary(),
       'senderInbox' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'templateHtml' := TemplateHtml,
          'subject' := Subject,
          'senderInbox' := SenderInbox
        }) ->
    #{ 'templateHtml' => TemplateHtml,
       'subject' => Subject,
       'senderInbox' => SenderInbox
     }.
