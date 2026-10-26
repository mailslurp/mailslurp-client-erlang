-module(maislurp-client-erlang_agent_prepared_reply_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_prepared_reply_dto/0]).

-type maislurp-client-erlang_agent_prepared_reply_dto() ::
    #{ 'draft' := maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(),
       'conversation' := maislurp-client-erlang_agent_conversation_detail_v2_dto:maislurp-client-erlang_agent_conversation_detail_v2_dto(),
       'claimReleased' := boolean()
     }.

encode(#{ 'draft' := Draft,
          'conversation' := Conversation,
          'claimReleased' := ClaimReleased
        }) ->
    #{ 'draft' => Draft,
       'conversation' => Conversation,
       'claimReleased' => ClaimReleased
     }.
