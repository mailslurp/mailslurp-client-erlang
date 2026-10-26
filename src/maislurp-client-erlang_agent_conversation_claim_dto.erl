-module(maislurp-client-erlang_agent_conversation_claim_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_conversation_claim_dto/0]).

-type maislurp-client-erlang_agent_conversation_claim_dto() ::
    #{ 'claimId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'conversationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'apiKeyEntityId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'workerId' := binary(),
       'acquiredAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'expiresAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'conversationVersion' => integer()
     }.

encode(#{ 'claimId' := ClaimId,
          'conversationId' := ConversationId,
          'apiKeyEntityId' := ApiKeyEntityId,
          'workerId' := WorkerId,
          'acquiredAt' := AcquiredAt,
          'expiresAt' := ExpiresAt,
          'conversationVersion' := ConversationVersion
        }) ->
    #{ 'claimId' => ClaimId,
       'conversationId' => ConversationId,
       'apiKeyEntityId' => ApiKeyEntityId,
       'workerId' => WorkerId,
       'acquiredAt' => AcquiredAt,
       'expiresAt' => ExpiresAt,
       'conversationVersion' => ConversationVersion
     }.
