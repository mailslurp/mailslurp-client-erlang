-module(maislurp-client-erlang_prepare_agent_reply_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_prepare_agent_reply_options/0]).

-type maislurp-client-erlang_prepare_agent_reply_options() ::
    #{ 'sourceEmailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'reply' := maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options(),
       'expectedConversationVersion' => integer(),
       'expectedLatestEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'internalNote' => binary(),
       'claimId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'sourceEmailId' := SourceEmailId,
          'reply' := Reply,
          'expectedConversationVersion' := ExpectedConversationVersion,
          'expectedLatestEmailId' := ExpectedLatestEmailId,
          'internalNote' := InternalNote,
          'claimId' := ClaimId
        }) ->
    #{ 'sourceEmailId' => SourceEmailId,
       'reply' => Reply,
       'expectedConversationVersion' => ExpectedConversationVersion,
       'expectedLatestEmailId' => ExpectedLatestEmailId,
       'internalNote' => InternalNote,
       'claimId' => ClaimId
     }.
