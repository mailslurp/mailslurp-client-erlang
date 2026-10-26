-module(maislurp-client-erlang_agent_conversation_handoff_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_conversation_handoff_dto/0]).

-type maislurp-client-erlang_agent_conversation_handoff_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'requestedByApiKeyEntityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'requestedByUserId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'reasonCode' := binary(),
       'reason' => binary(),
       'priority' := binary(),
       'status' := binary(),
       'assignedUserId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'sourceEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'draftId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'version' := integer(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sourceSmsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationVersion' => integer()
     }.

encode(#{ 'id' := Id,
          'conversationId' := ConversationId,
          'requestedByApiKeyEntityId' := RequestedByApiKeyEntityId,
          'requestedByUserId' := RequestedByUserId,
          'reasonCode' := ReasonCode,
          'reason' := Reason,
          'priority' := Priority,
          'status' := Status,
          'assignedUserId' := AssignedUserId,
          'sourceEmailId' := SourceEmailId,
          'draftId' := DraftId,
          'version' := Version,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'completedAt' := CompletedAt,
          'sourceSmsId' := SourceSmsId,
          'conversationVersion' := ConversationVersion
        }) ->
    #{ 'id' => Id,
       'conversationId' => ConversationId,
       'requestedByApiKeyEntityId' => RequestedByApiKeyEntityId,
       'requestedByUserId' => RequestedByUserId,
       'reasonCode' => ReasonCode,
       'reason' => Reason,
       'priority' => Priority,
       'status' => Status,
       'assignedUserId' => AssignedUserId,
       'sourceEmailId' => SourceEmailId,
       'draftId' => DraftId,
       'version' => Version,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'completedAt' => CompletedAt,
       'sourceSmsId' => SourceSmsId,
       'conversationVersion' => ConversationVersion
     }.
