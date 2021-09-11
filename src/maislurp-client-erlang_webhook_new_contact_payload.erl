-module(maislurp-client-erlang_webhook_new_contact_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_contact_payload/0]).

-type maislurp-client-erlang_webhook_new_contact_payload() ::
    #{ 'company' => binary(),
       'contactId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'emailAddresses' := list(),
       'eventName' => binary(),
       'firstName' => binary(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'lastName' => binary(),
       'messageId' => binary(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'primaryEmailAddress' => binary(),
       'tags' := list(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary()
     }.

encode(#{ 'company' := Company,
          'contactId' := ContactId,
          'createdAt' := CreatedAt,
          'emailAddresses' := EmailAddresses,
          'eventName' := EventName,
          'firstName' := FirstName,
          'groupId' := GroupId,
          'lastName' := LastName,
          'messageId' := MessageId,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'primaryEmailAddress' := PrimaryEmailAddress,
          'tags' := Tags,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName
        }) ->
    #{ 'company' => Company,
       'contactId' => ContactId,
       'createdAt' => CreatedAt,
       'emailAddresses' => EmailAddresses,
       'eventName' => EventName,
       'firstName' => FirstName,
       'groupId' => GroupId,
       'lastName' => LastName,
       'messageId' => MessageId,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'primaryEmailAddress' => PrimaryEmailAddress,
       'tags' => Tags,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName
     }.
