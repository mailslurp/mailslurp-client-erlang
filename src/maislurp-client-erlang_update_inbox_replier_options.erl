-module(maislurp-client-erlang_update_inbox_replier_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_inbox_replier_options/0]).

-type maislurp-client-erlang_update_inbox_replier_options() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'field' := binary(),
       'match' := binary(),
       'replyTo' => binary(),
       'subject' => binary(),
       'from' => binary(),
       'charset' => binary(),
       'isHTML' => boolean(),
       'ignoreReplyTo' => boolean(),
       'body' => binary(),
       'templateId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map()
     }.

encode(#{ 'inboxId' := InboxId,
          'name' := Name,
          'field' := Field,
          'match' := Match,
          'replyTo' := ReplyTo,
          'subject' := Subject,
          'from' := From,
          'charset' := Charset,
          'isHTML' := IsHTML,
          'ignoreReplyTo' := IgnoreReplyTo,
          'body' := Body,
          'templateId' := TemplateId,
          'templateVariables' := TemplateVariables
        }) ->
    #{ 'inboxId' => InboxId,
       'name' => Name,
       'field' => Field,
       'match' => Match,
       'replyTo' => ReplyTo,
       'subject' => Subject,
       'from' => From,
       'charset' => Charset,
       'isHTML' => IsHTML,
       'ignoreReplyTo' => IgnoreReplyTo,
       'body' => Body,
       'templateId' => TemplateId,
       'templateVariables' => TemplateVariables
     }.
