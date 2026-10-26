-module(maislurp-client-erlang_agent_sms_conversation_detail_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_sms_conversation_detail_dto/0]).

-type maislurp-client-erlang_agent_sms_conversation_detail_dto() ::
    #{ 'conversation' := maislurp-client-erlang_agent_sms_conversation_queue_item_dto:maislurp-client-erlang_agent_sms_conversation_queue_item_dto(),
       'activities' := list(),
       'notes' := list(),
       'activeHandoff' => maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto()
     }.

encode(#{ 'conversation' := Conversation,
          'activities' := Activities,
          'notes' := Notes,
          'activeHandoff' := ActiveHandoff
        }) ->
    #{ 'conversation' => Conversation,
       'activities' => Activities,
       'notes' => Notes,
       'activeHandoff' => ActiveHandoff
     }.
