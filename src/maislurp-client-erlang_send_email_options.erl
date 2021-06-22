-module(maislurp-client-erlang_send_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_send_email_options/0]).

-type maislurp-client-erlang_send_email_options() ::
    #{ 'attachments' => list(),
       'bcc' => list(),
       'body' => binary(),
       'cc' => list(),
       'charset' => binary(),
       'from' => binary(),
       'html' => boolean(),
       'isHTML' => boolean(),
       'replyTo' => binary(),
       'sendStrategy' => binary(),
       'subject' => binary(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map(),
       'to' => list(),
       'toContacts' => list(),
       'toGroup' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'useInboxName' => boolean()
     }.

encode(#{ 'attachments' := Attachments,
          'bcc' := Bcc,
          'body' := Body,
          'cc' := Cc,
          'charset' := Charset,
          'from' := From,
          'html' := Html,
          'isHTML' := IsHTML,
          'replyTo' := ReplyTo,
          'sendStrategy' := SendStrategy,
          'subject' := Subject,
          'template' := Template,
          'templateVariables' := TemplateVariables,
          'to' := To,
          'toContacts' := ToContacts,
          'toGroup' := ToGroup,
          'useInboxName' := UseInboxName
        }) ->
    #{ 'attachments' => Attachments,
       'bcc' => Bcc,
       'body' => Body,
       'cc' => Cc,
       'charset' => Charset,
       'from' => From,
       'html' => Html,
       'isHTML' => IsHTML,
       'replyTo' => ReplyTo,
       'sendStrategy' => SendStrategy,
       'subject' => Subject,
       'template' => Template,
       'templateVariables' => TemplateVariables,
       'to' => To,
       'toContacts' => ToContacts,
       'toGroup' => ToGroup,
       'useInboxName' => UseInboxName
     }.
