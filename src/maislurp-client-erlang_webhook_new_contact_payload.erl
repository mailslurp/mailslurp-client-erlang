-module(maislurp-client-erlang_webhook_new_contact_payload).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_new_contact_payload/0]).

-type maislurp-client-erlang_webhook_new_contact_payload() ::
    #{ 'messageId' => binary(),
       'webhookId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'webhookName' => binary(),
       'eventName' => binary(),
       'contactId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'groupId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'firstName' => binary(),
       'lastName' => binary(),
       'company' => binary(),
       'primaryEmailAddress' => binary(),
       'emailAddresses' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'tags' => maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'metaData' => maps:map(),
       'optOut' => boolean(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'messageId' := MessageId,
          'webhookId' := WebhookId,
          'webhookName' := WebhookName,
          'eventName' := EventName,
          'contactId' := ContactId,
          'groupId' := GroupId,
          'firstName' := FirstName,
          'lastName' := LastName,
          'company' := Company,
          'primaryEmailAddress' := PrimaryEmailAddress,
          'emailAddresses' := EmailAddresses,
          'tags' := Tags,
          'metaData' := MetaData,
          'optOut' := OptOut,
          'createdAt' := CreatedAt
        }) ->
    #{ 'messageId' => MessageId,
       'webhookId' => WebhookId,
       'webhookName' => WebhookName,
       'eventName' => EventName,
       'contactId' => ContactId,
       'groupId' => GroupId,
       'firstName' => FirstName,
       'lastName' => LastName,
       'company' => Company,
       'primaryEmailAddress' => PrimaryEmailAddress,
       'emailAddresses' => EmailAddresses,
       'tags' => Tags,
       'metaData' => MetaData,
       'optOut' => OptOut,
       'createdAt' => CreatedAt
     }.
