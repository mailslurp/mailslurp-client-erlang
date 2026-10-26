-module(maislurp-client-erlang_create_agent_conversation_handoff_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_agent_conversation_handoff_options/0]).

-type maislurp-client-erlang_create_agent_conversation_handoff_options() ::
    #{ 'reasonCode' := binary(),
       'reason' => binary(),
       'priority' := binary(),
       'sourceEmailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'draftId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'expectedVersion' => integer()
     }.

encode(#{ 'reasonCode' := ReasonCode,
          'reason' := Reason,
          'priority' := Priority,
          'sourceEmailId' := SourceEmailId,
          'draftId' := DraftId,
          'expectedVersion' := ExpectedVersion
        }) ->
    #{ 'reasonCode' => ReasonCode,
       'reason' => Reason,
       'priority' => Priority,
       'sourceEmailId' => SourceEmailId,
       'draftId' => DraftId,
       'expectedVersion' => ExpectedVersion
     }.
