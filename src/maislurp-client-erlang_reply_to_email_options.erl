-module(maislurp-client-erlang_reply_to_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_reply_to_email_options/0]).

-type maislurp-client-erlang_reply_to_email_options() ::
    #{ 'body' => binary(),
       'from' => binary(),
       'replyTo' => binary(),
       'charset' => binary(),
       'attachments' => list(),
       'templateVariables' => maps:map(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sendStrategy' => binary(),
       'useInboxName' => boolean(),
       'html' => boolean()
     }.

encode(#{ 'body' := Body,
          'from' := From,
          'replyTo' := ReplyTo,
          'charset' := Charset,
          'attachments' := Attachments,
          'templateVariables' := TemplateVariables,
          'template' := Template,
          'sendStrategy' := SendStrategy,
          'useInboxName' := UseInboxName,
          'html' := Html
        }) ->
    #{ 'body' => Body,
       'from' => From,
       'replyTo' => ReplyTo,
       'charset' => Charset,
       'attachments' => Attachments,
       'templateVariables' => TemplateVariables,
       'template' => Template,
       'sendStrategy' => SendStrategy,
       'useInboxName' => UseInboxName,
       'html' => Html
     }.
