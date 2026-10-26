-module(maislurp-client-erlang_complete_agent_work_item_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_complete_agent_work_item_options/0]).

-type maislurp-client-erlang_complete_agent_work_item_options() ::
    #{ 'sourceEmailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'reply' := maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options(),
       'idempotencyKey' := binary(),
       'expectedConversationVersion' => integer(),
       'expectedLatestEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'claimId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'sourceEmailId' := SourceEmailId,
          'reply' := Reply,
          'idempotencyKey' := IdempotencyKey,
          'expectedConversationVersion' := ExpectedConversationVersion,
          'expectedLatestEmailId' := ExpectedLatestEmailId,
          'claimId' := ClaimId
        }) ->
    #{ 'sourceEmailId' => SourceEmailId,
       'reply' => Reply,
       'idempotencyKey' => IdempotencyKey,
       'expectedConversationVersion' => ExpectedConversationVersion,
       'expectedLatestEmailId' => ExpectedLatestEmailId,
       'claimId' => ClaimId
     }.
