-module(maislurp-client-erlang_inbox_replier_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_replier_dto/0]).

-type maislurp-client-erlang_inbox_replier_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'field' => binary(),
       'match' => binary(),
       'replyTo' => binary(),
       'subject' => binary(),
       'from' => binary(),
       'charset' => binary(),
       'isHTML' := boolean(),
       'templateId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'templateVariables' => maps:map(),
       'ignoreReplyTo' := boolean(),
       'active' := boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'should' => binary(),
       'matchOptions' => maislurp-client-erlang_inbox_automation_match_options:maislurp-client-erlang_inbox_automation_match_options(),
       'body' => binary(),
       'attachments' => list()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'field' := Field,
          'match' := Match,
          'replyTo' := ReplyTo,
          'subject' := Subject,
          'from' := From,
          'charset' := Charset,
          'isHTML' := IsHTML,
          'templateId' := TemplateId,
          'templateVariables' := TemplateVariables,
          'ignoreReplyTo' := IgnoreReplyTo,
          'active' := Active,
          'createdAt' := CreatedAt,
          'should' := Should,
          'matchOptions' := MatchOptions,
          'body' := Body,
          'attachments' := Attachments
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'field' => Field,
       'match' => Match,
       'replyTo' => ReplyTo,
       'subject' => Subject,
       'from' => From,
       'charset' => Charset,
       'isHTML' => IsHTML,
       'templateId' => TemplateId,
       'templateVariables' => TemplateVariables,
       'ignoreReplyTo' => IgnoreReplyTo,
       'active' => Active,
       'createdAt' => CreatedAt,
       'should' => Should,
       'matchOptions' => MatchOptions,
       'body' => Body,
       'attachments' => Attachments
     }.
