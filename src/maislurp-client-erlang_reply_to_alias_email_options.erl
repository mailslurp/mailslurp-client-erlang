-module(maislurp-client-erlang_reply_to_alias_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_reply_to_alias_email_options/0]).

-type maislurp-client-erlang_reply_to_alias_email_options() ::
    #{ 'body' := binary(),
       'isHTML' := boolean(),
       'charset' => binary(),
       'attachments' => list(),
       'templateVariables' => maps:map(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sendStrategy' => binary(),
       'useInboxName' => boolean()
     }.

encode(#{ 'body' := Body,
          'isHTML' := IsHTML,
          'charset' := Charset,
          'attachments' := Attachments,
          'templateVariables' := TemplateVariables,
          'template' := Template,
          'sendStrategy' := SendStrategy,
          'useInboxName' := UseInboxName
        }) ->
    #{ 'body' => Body,
       'isHTML' => IsHTML,
       'charset' => Charset,
       'attachments' => Attachments,
       'templateVariables' => TemplateVariables,
       'template' => Template,
       'sendStrategy' => SendStrategy,
       'useInboxName' => UseInboxName
     }.
