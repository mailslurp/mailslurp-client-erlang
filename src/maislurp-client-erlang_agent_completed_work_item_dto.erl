-module(maislurp-client-erlang_agent_completed_work_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_completed_work_item_dto/0]).

-type maislurp-client-erlang_agent_completed_work_item_dto() ::
    #{ 'sentEmail' := maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(),
       'conversationId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'claimReleased' := boolean()
     }.

encode(#{ 'sentEmail' := SentEmail,
          'conversationId' := ConversationId,
          'claimReleased' := ClaimReleased
        }) ->
    #{ 'sentEmail' => SentEmail,
       'conversationId' => ConversationId,
       'claimReleased' => ClaimReleased
     }.
