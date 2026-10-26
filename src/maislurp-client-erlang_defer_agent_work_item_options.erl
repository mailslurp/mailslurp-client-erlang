-module(maislurp-client-erlang_defer_agent_work_item_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_defer_agent_work_item_options/0]).

-type maislurp-client-erlang_defer_agent_work_item_options() ::
    #{ 'reasonCode' := binary(),
       'reason' => binary(),
       'priority' := binary(),
       'sourceEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'draftId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'expectedConversationVersion' => integer(),
       'claimId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'reasonCode' := ReasonCode,
          'reason' := Reason,
          'priority' := Priority,
          'sourceEmailId' := SourceEmailId,
          'draftId' := DraftId,
          'expectedConversationVersion' := ExpectedConversationVersion,
          'claimId' := ClaimId
        }) ->
    #{ 'reasonCode' => ReasonCode,
       'reason' => Reason,
       'priority' => Priority,
       'sourceEmailId' => SourceEmailId,
       'draftId' => DraftId,
       'expectedConversationVersion' => ExpectedConversationVersion,
       'claimId' => ClaimId
     }.
