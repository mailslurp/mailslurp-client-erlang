-module(maislurp-client-erlang_send_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_email_options/0]).

-type maislurp-client-erlang_send_email_options() ::
    #{ 'toContacts' => list(),
       'toGroup' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'to' => list(),
       'from' => binary(),
       'cc' => list(),
       'bcc' => list(),
       'subject' => binary(),
       'replyTo' => binary(),
       'body' => binary(),
       'html' => boolean(),
       'isHTML' => boolean(),
       'charset' => binary(),
       'attachments' => list(),
       'templateVariables' => maps:map(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sendStrategy' => binary(),
       'useInboxName' => boolean(),
       'addTrackingPixel' => boolean(),
       'filterBouncedRecipients' => boolean(),
       'validateEmailAddresses' => binary()
     }.

encode(#{ 'toContacts' := ToContacts,
          'toGroup' := ToGroup,
          'to' := To,
          'from' := From,
          'cc' := Cc,
          'bcc' := Bcc,
          'subject' := Subject,
          'replyTo' := ReplyTo,
          'body' := Body,
          'html' := Html,
          'isHTML' := IsHTML,
          'charset' := Charset,
          'attachments' := Attachments,
          'templateVariables' := TemplateVariables,
          'template' := Template,
          'sendStrategy' := SendStrategy,
          'useInboxName' := UseInboxName,
          'addTrackingPixel' := AddTrackingPixel,
          'filterBouncedRecipients' := FilterBouncedRecipients,
          'validateEmailAddresses' := ValidateEmailAddresses
        }) ->
    #{ 'toContacts' => ToContacts,
       'toGroup' => ToGroup,
       'to' => To,
       'from' => From,
       'cc' => Cc,
       'bcc' => Bcc,
       'subject' => Subject,
       'replyTo' => ReplyTo,
       'body' => Body,
       'html' => Html,
       'isHTML' => IsHTML,
       'charset' => Charset,
       'attachments' => Attachments,
       'templateVariables' => TemplateVariables,
       'template' => Template,
       'sendStrategy' => SendStrategy,
       'useInboxName' => UseInboxName,
       'addTrackingPixel' => AddTrackingPixel,
       'filterBouncedRecipients' => FilterBouncedRecipients,
       'validateEmailAddresses' => ValidateEmailAddresses
     }.
