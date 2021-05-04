-module(maislurp-client-erlang_reply_to_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_reply_to_email_options/0]).

-type maislurp-client-erlang_reply_to_email_options() ::
    #{ 'attachments' => list(),
       'body' => binary(),
       'charset' => binary(),
       'from' => binary(),
       'isHTML' => boolean(),
       'replyTo' => binary(),
       'sendStrategy' => binary(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map()
     }.

encode(#{ 'attachments' := Attachments,
          'body' := Body,
          'charset' := Charset,
          'from' := From,
          'isHTML' := IsHTML,
          'replyTo' := ReplyTo,
          'sendStrategy' := SendStrategy,
          'template' := Template,
          'templateVariables' := TemplateVariables
        }) ->
    #{ 'attachments' => Attachments,
       'body' => Body,
       'charset' => Charset,
       'from' => From,
       'isHTML' => IsHTML,
       'replyTo' => ReplyTo,
       'sendStrategy' => SendStrategy,
       'template' => Template,
       'templateVariables' => TemplateVariables
     }.
