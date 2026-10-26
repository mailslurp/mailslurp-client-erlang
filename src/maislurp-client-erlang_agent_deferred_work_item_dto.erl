-module(maislurp-client-erlang_agent_deferred_work_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_deferred_work_item_dto/0]).

-type maislurp-client-erlang_agent_deferred_work_item_dto() ::
    #{ 'handoff' := maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto(),
       'conversation' := maislurp-client-erlang_agent_conversation_detail_v2_dto:maislurp-client-erlang_agent_conversation_detail_v2_dto(),
       'claimReleased' := boolean()
     }.

encode(#{ 'handoff' := Handoff,
          'conversation' := Conversation,
          'claimReleased' := ClaimReleased
        }) ->
    #{ 'handoff' => Handoff,
       'conversation' => Conversation,
       'claimReleased' => ClaimReleased
     }.
