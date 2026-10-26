-module(maislurp-client-erlang_agent_conversation_note_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_conversation_note_dto/0]).

-type maislurp-client-erlang_agent_conversation_note_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'actorType' := binary(),
       'actorApiKeyEntityId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'actorUserId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'body' := binary(),
       'sourceEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'draftId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'handoffId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sourceSmsId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationVersion' => integer()
     }.

encode(#{ 'id' := Id,
          'conversationId' := ConversationId,
          'actorType' := ActorType,
          'actorApiKeyEntityId' := ActorApiKeyEntityId,
          'actorUserId' := ActorUserId,
          'body' := Body,
          'sourceEmailId' := SourceEmailId,
          'draftId' := DraftId,
          'handoffId' := HandoffId,
          'createdAt' := CreatedAt,
          'sourceSmsId' := SourceSmsId,
          'conversationVersion' := ConversationVersion
        }) ->
    #{ 'id' => Id,
       'conversationId' => ConversationId,
       'actorType' => ActorType,
       'actorApiKeyEntityId' => ActorApiKeyEntityId,
       'actorUserId' => ActorUserId,
       'body' => Body,
       'sourceEmailId' => SourceEmailId,
       'draftId' => DraftId,
       'handoffId' => HandoffId,
       'createdAt' => CreatedAt,
       'sourceSmsId' => SourceSmsId,
       'conversationVersion' => ConversationVersion
     }.
