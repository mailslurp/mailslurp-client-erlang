-module(maislurp-client-erlang_agent_automation_event_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_automation_event_dto/0]).

-type maislurp-client-erlang_agent_automation_event_dto() ::
    #{ 'eventId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'type' := binary(),
       'schemaVersion' := integer(),
       'occurredAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'publishedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'conversationId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationVersion' => integer(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'smsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sentSmsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sourceType' => binary(),
       'sourceId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'eventId' := EventId,
          'type' := Type,
          'schemaVersion' := SchemaVersion,
          'occurredAt' := OccurredAt,
          'publishedAt' := PublishedAt,
          'conversationId' := ConversationId,
          'inboxId' := InboxId,
          'emailId' := EmailId,
          'conversationVersion' := ConversationVersion,
          'phoneNumberId' := PhoneNumberId,
          'smsId' := SmsId,
          'sentSmsId' := SentSmsId,
          'sourceType' := SourceType,
          'sourceId' := SourceId
        }) ->
    #{ 'eventId' => EventId,
       'type' => Type,
       'schemaVersion' => SchemaVersion,
       'occurredAt' => OccurredAt,
       'publishedAt' => PublishedAt,
       'conversationId' => ConversationId,
       'inboxId' => InboxId,
       'emailId' => EmailId,
       'conversationVersion' => ConversationVersion,
       'phoneNumberId' => PhoneNumberId,
       'smsId' => SmsId,
       'sentSmsId' => SentSmsId,
       'sourceType' => SourceType,
       'sourceId' => SourceId
     }.
