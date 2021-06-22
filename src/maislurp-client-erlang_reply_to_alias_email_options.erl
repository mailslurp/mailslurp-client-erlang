-module(maislurp-client-erlang_reply_to_alias_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_reply_to_alias_email_options/0]).

-type maislurp-client-erlang_reply_to_alias_email_options() ::
    #{ 'attachments' => list(),
       'body' => binary(),
       'charset' => binary(),
       'isHTML' => boolean(),
       'sendStrategy' => binary(),
       'template' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map(),
       'useInboxName' => boolean()
     }.

encode(#{ 'attachments' := Attachments,
          'body' := Body,
          'charset' := Charset,
          'isHTML' := IsHTML,
          'sendStrategy' := SendStrategy,
          'template' := Template,
          'templateVariables' := TemplateVariables,
          'useInboxName' := UseInboxName
        }) ->
    #{ 'attachments' => Attachments,
       'body' => Body,
       'charset' => Charset,
       'isHTML' => IsHTML,
       'sendStrategy' => SendStrategy,
       'template' => Template,
       'templateVariables' => TemplateVariables,
       'useInboxName' => UseInboxName
     }.
