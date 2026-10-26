-module(maislurp-client-erlang_agent_work_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_work_item_dto/0]).

-type maislurp-client-erlang_agent_work_item_dto() ::
    #{ 'conversation' => maislurp-client-erlang_agent_conversation_detail_v2_dto:maislurp-client-erlang_agent_conversation_detail_v2_dto(),
       'claim' => maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(),
       'nextCursor' => binary(),
       'hasMore' := boolean()
     }.

encode(#{ 'conversation' := Conversation,
          'claim' := Claim,
          'nextCursor' := NextCursor,
          'hasMore' := HasMore
        }) ->
    #{ 'conversation' => Conversation,
       'claim' => Claim,
       'nextCursor' => NextCursor,
       'hasMore' => HasMore
     }.
